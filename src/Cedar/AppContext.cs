using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Sharding.ShardStrategy;
using Cedar.Sharding.ShardStrategy.ShardSelection;


namespace Cedar
{
    /// <summary>
    /// This class provides session object to deal with your sharded databases
    /// </summary>
    public class AppContext
    {
        private App _app;
        private IShardStrategy _shardStrategy = null;
        private long _currentShard=0;
        /// <summary>
        /// Get the current shard id
        /// </summary>
        public long CurrentShard
        {
            //get { return ShardStrategy.ShardSelectionStrategy.SelectShardIdForExistingObject(new ShardStartegyData() { StrategyType = Strategy.Sequential }); ; }
            get
            {
                //if(_currentShard ==0)
                //{
                //    _currentShard=  ShardStrategy.ShardSelectionStrategy.SelectShardIdForExistingObject(new ShardStartegyData() { StrategyType = Strategy.Sequential,App=_app });
                //    var worker = new IdWorker(_currentShard);
                //    var uniqueId = worker.GetUniqueId();
                //    _currentShard = uniqueId;
                //}
                
                _currentShard = ShardStrategy.ShardSelectionStrategy.SelectShardIdForExistingObject(new ShardStartegyData() { StrategyType = Strategy.Sequential, App = _app });

                return _currentShard;
            }
        }

      
        /// <summary>
        /// Check if the new setup required 
        /// </summary>
        public bool IsSetupSchemaRequired { get {
            //var worker = new IdWorker(CurrentShard);
            //var shardId = worker.DecomposeKey(CurrentShard);

            var shard = _app.Shards.Where(t => t.shard_id == CurrentShard).FirstOrDefault();
           // var shard = new DataFactory().GetdataReader(FetchMode.Sql).GetShardById(CurrentShard);

            if (shard != null && shard.is_schema_exists != null)
           {
                return shard.is_schema_exists.Value != true;
           }
            return true;

        }  }
        // 1. I need to have all shards that are configured for this app
        // 2. I need to know how to decode the uuid and understand a shard id out of it
        // 3. I need to know a shard resolution strategy
        /// <summary>
        ///
        /// </summary>
        /// <param name="appName"></param>
        public AppContext(string appName)
        {
            _app = new App();
            _app.ApplicationName = appName;
            var dataReader = new DataFactory().GetdataReader(FetchMode.Sql);
            var shards = dataReader.GetAllShardByAppname(_app.ApplicationName);
           
            _app.Shards = shards;
        }
        
        /// <summary>
        /// this method will set up schema for new user, will return unique id to application
        /// </summary>
        /// <returns></returns>
        public long SetupSchema(ShardStartegyData dto)
        {
            // call ShardStrategy with app name
            // Strategy will return me shardid.
            // call cedar data method which would execute schema def statements in above shard id

            var dataReader = new DataFactory().GetdataReader(FetchMode.Sql);
            dto.App = _app;
            var shardId = ShardStrategy.ShardSelectionStrategy.SelectShardIdForExistingObject(dto);
          
            var worker = new IdWorker(shardId);
            var uniqueId = worker.GetUniqueId();
            //_currentShard = uniqueId;
            var appSchema = dataReader.GetAppSchema(shardId);
           
            var cedarSession = new CedarSession(uniqueId) { EnableTrasaction = true };
            cedarSession.SetupSchema(appSchema);
            cedarSession.Close();
            new DataFactory().GetdataReader(FetchMode.Sql).UpdateShard(shardId);
            _app.Shards = new DataFactory().GetdataReader(FetchMode.Sql).GetAllShardByAppname(_app.ApplicationName);
            return uniqueId;

        }
        public void UpdateShard(long uuid)
        {
            var worker = new IdWorker(uuid);
            var uniqueId = worker.DecomposeKey(uuid);
            new DataFactory().GetdataReader(FetchMode.Sql).UpdateShardCount(uniqueId);
            _app.Shards = new DataFactory().GetdataReader(FetchMode.Sql).GetAllShardByAppname(_app.ApplicationName);

        }
        /// <summary>
        ///
        /// </summary>
        public App App
        {

            get { return _app; }

        }

        public IList<Shard> Shards { get { return _app.Shards; } }


        /// <summary>
        ///
        /// </summary>
        /// <param name="uuid"></param>
        /// <returns></returns>
        public ICedarSession GetSession(long uuid)
        {
            return new CedarSession(uuid);

        }

        /// <summary>
        /// get and set the shard strategy, if not set default startegy will be set.
        /// </summary>
        public IShardStrategy ShardStrategy
        {
            get { return _shardStrategy ?? (_shardStrategy = new ShardStrategy()); }
            set { _shardStrategy = value; }
        }

    }
}
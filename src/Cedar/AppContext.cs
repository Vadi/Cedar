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
        public long SetupSchema()
        {
            // call ShardStrategy with app name
            // Strategy will return me shardid.
            // call cedar data method which would execute schema def statements in above shard id


            var dataReader = new DataFactory().GetdataReader(FetchMode.Sql);

            var shardId = ShardStrategy.ShardSelectionStrategy.SelectShardIdForExistingObject(_app);
            var worker = new IdWorker(shardId);
            var uniqueId = worker.GetUniqueId();
            var appSchema = dataReader.GetAppSchema(shardId);
            var cedarSession = new CedarSession(uniqueId) { EnableTrasaction = true };
            cedarSession.SetupSchema(appSchema);
            cedarSession.Close();
            dataReader.UpdateShardWile(shardId);
            return uniqueId;

        }

        /// <summary>
        ///
        /// </summary>
        public App App
        {

            get { return _app; }

        }


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
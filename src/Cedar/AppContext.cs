using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Sharding.ShardStrategy;



namespace Cedar
{
    /// <summary>
    /// This class provides session object to deal with your sharded databases
    /// </summary>
    public class AppContext
    {
        private App _app;

        // 1. I need to have all shards that are configured for this app
        // 2. I need to know how to decode the uuid and understand a shard id out of it
        // 3. I need to know a shard resolution strategy
        public AppContext(string appName)
        {
            _app = new App();
            _app.ApplicationName = appName;
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

            var dataReader = new DataFactory().GetdataReader(FetchType.Sql);
            var shards = dataReader.GetAllShardByAppname(_app.ApplicationName);
            _app.Shards = shards;
            IShardStrategy<App> shardStrategy = new ShardStrategy<App>();
<<<<<<< HEAD
            var shardSelection = shardStrategy.ShardSelectionStrategy;
            var shardId = shardSelection.SelectShardIdForExistingObject(_app);
            var worker = new IdWorker(shardId);
            var uniqueId = worker.GetUniqueId();
            var appSchema = dataReader.GetAppSchema(shardId);
=======
            var shardSelection=shardStrategy.ShardSelectionStrategy;
            var shardId=shardSelection.SelectShardIdForExistingObject(_app);
            var worker = new IdWorker(shardId);
            var uniqueId = worker.GetUniqueId();
            var appSchema=dataReader.GetAppSchema(shardId);
>>>>>>> d4b85edc452fe7942e7d1bb5214a700fc9064bd4
            var cedarSession = new CedarSession(uniqueId);
            cedarSession.EnableTrasaction = true;
            cedarSession.SetupSchema(appSchema);
            cedarSession.Close();
            dataReader.UpdateShardWile(shardId);
            return uniqueId;

        }

        public ICedarSession GetSession(long uuid)
        {
            return new CedarSession(uuid);

        }

    }
}
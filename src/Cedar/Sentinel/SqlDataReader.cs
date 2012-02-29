using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    public class SqlDataReader : IDataReader
    {
        public List<Shard> GetAllShardByAppname(string appName)
        {
            var shardRepository = new ShardRepository();
            return shardRepository.GetAllShard().ToList();
        }

        public Shard GetShardById(long shardId)
        {
            var shardRepository = new ShardRepository();

            return shardRepository.GetShardById(shardId);
        }

        public List<Shard> GetAllShard()
        {
            var shardRepository = new ShardRepository();
            IEnumerable<Shard> shardList = shardRepository.GetAllShard();

            return shardList.ToList();
        }

        public void SetupSchema(long shardId, long uuid)
        {
            var app = new App();
            var shardRepository = new ShardRepository();
            var shard =  shardRepository.GetShardById(shardId);

            var connectionString = shard.connection_string ;

            var appSchema = shardRepository.GetAppSchema(shard.application_name);

            app.AppId = uuid;
            app.ApplicationName = shard.application_name;
            app.Shards.Add(shard);

            var cedarSession = new CedarSession(shardId);
            cedarSession.EnableTrasaction = true;
            cedarSession.SetupSchema(app,appSchema );
            cedarSession.Close();
        }

        public IList<ShardWile> GetShardStrategyById(long shardId)
        {
            var shardStrategy = new ShardStrategyRepository();
            return shardStrategy.GetShardStrategyById(shardId);
        }

    }
}

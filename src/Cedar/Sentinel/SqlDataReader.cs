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
            return shardRepository.GetAllShard(appName).ToList();
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
<<<<<<< HEAD

        public void SetupSchema(long shardId, long uuid)
=======
        public AppSchema GetAppSchema(long shardId)
>>>>>>> d4b85edc452fe7942e7d1bb5214a700fc9064bd4
        {
          
            var shardRepository = new ShardRepository();
<<<<<<< HEAD
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
=======
            var shard=  shardRepository.GetShardById(shardId);
            return  shardRepository.GetAppSchema(shard.application_name);

>>>>>>> d4b85edc452fe7942e7d1bb5214a700fc9064bd4
        }

        public IList<ShardWile> GetShardStrategyById(long shardId)
        {
            var shardStrategy = new ShardStrategyRepository();
            return shardStrategy.GetShardStrategyById(shardId);
        }
        public void UpdateShardWile(long shardId)
        {
            var shardStrategy = new ShardStrategyRepository();
            shardStrategy.UpdateShardStrategy(shardId);
        }

    }
}

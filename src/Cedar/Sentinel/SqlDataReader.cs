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
        public AppSchema GetAppSchema(long shardId)
        {
          
            var shardRepository = new ShardRepository();
            var shard=  shardRepository.GetShardById(shardId);
            return  shardRepository.GetAppSchema(shard.application_name);

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

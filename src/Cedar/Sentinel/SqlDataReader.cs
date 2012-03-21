using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    /// <summary>
    /// Get the Cedar information from Cedar sql database
    /// </summary>
    public class SqlDataReader : IDataReader
    {
        /// <summary>
        /// Get all the shards of a given application
        /// </summary>
        /// <param name="appName"></param>
        /// <returns></returns>
        public List<Shard> GetAllShardByAppname(string appName)
        {
            var shardRepository = new ShardRepository();
            return shardRepository.GetAllShard(appName).ToList();
        }
        /// <summary>
        /// Get shard for given shard id
        /// </summary>
        /// <param name="shardId"></param>
        /// <returns></returns>
        public Shard GetShardById(long shardId)
        {
            var shardRepository = new ShardRepository();

            return shardRepository.GetShardById(shardId);
        }
        /// <summary>
        /// Get all the shards
        /// </summary>
        /// <returns></returns>
        public List<Shard> GetAllShard()
        {
            var shardRepository = new ShardRepository();

            IEnumerable<Shard> shardList = shardRepository.GetAllShard();

            return shardList.ToList();
        }
        /// <summary>
        /// Get application schema by shard id
        /// </summary>
        /// <param name="shardId"></param>
        /// <returns></returns>
        public AppSchema GetAppSchema(long shardId)
        {

            var shardRepository = new ShardRepository();
            var shard = shardRepository.GetShardById(shardId);
            return shardRepository.GetAppSchema(shard.application_name);

        }
        /// <summary>
        /// Get the shard strategy by shard id
        /// </summary>
        /// <param name="shardId"></param>
        /// <returns></returns>
        public IList<ShardWile> GetShardStrategyById(long shardId)
        {
            var shardStrategy = new ShardStrategyRepository();
            return shardStrategy.GetShardStrategyById(shardId);
        }
        /// <summary>
        /// Get all the shards strategy
        /// </summary>
        /// <returns></returns>
        public IList<ShardWile> GetShardStrategy()
        {
            var shardStrategy = new ShardStrategyRepository();
            return shardStrategy.GetShardStrategy();
        }
        /// <summary>
        /// Updates the shard wile
        /// </summary>
        /// <param name="shardId"></param>
        public void UpdateShardWile(long shardId)
        {
            var shardStrategy = new ShardStrategyRepository();
            shardStrategy.UpdateShardStrategy(shardId);
        }
        /// <summary>
        /// Update the shard schema setup information
        /// </summary>
        /// <param name="shardId"></param>
        public void UpdateShard(long shardId)
        {
            var shardStrategy = new ShardRepository();
            shardStrategy.UpdateShard(shardId);
        }

        /// <summary>
        /// Updates the shard total count information
        /// </summary>
        /// <param name="shardId"></param>
        public void UpdateShardCount(long shardId)
        {
            var shardStrategy = new ShardRepository();
            shardStrategy.UpdateShardCount(shardId);
        }
    }
}

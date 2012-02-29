using System.Linq;

namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    /// <summary>
    /// 
    /// </summary>
    public class ShardSelectionStrategy : IShardSelectionStrategy
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public long SelectShardIdForNewObject(object obj)
        {
            throw new System.NotImplementedException();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public long SelectShardIdForExistingObject(object obj)
        {
            var appCntxt = obj as AppContext;
            var app = appCntxt.App;
            long shardId = 0;
            if (app != null && app.Shards.Count >0)
            {
                foreach (var shard in app.Shards)
                {
                   shardId = GetSequentialStrategy(shard.shard_id);
                   if (shardId > 0) break;
                }
            }
            return shardId;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="shardId"></param>
        /// <returns></returns>
        private long GetSequentialStrategy(long shardId)
        {
            var shardWileList = new SqlDataReader().GetShardStrategyById(shardId);
            //return (shardPileList.Where(shardWile => shardWile.TotalCount <= shardWile.MaxCount).Select(
            //    shardWile => shardWile.ShardId)).FirstOrDefault();
            return (from shardWile in shardWileList where shardWile.TotalCount <= shardWile.MaxCount select shardWile.ShardId).FirstOrDefault();
        }
    }
}

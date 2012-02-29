using System.Linq;

namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    public class ShardSelectionStrategy<T> : IShardSelectionStrategy<T>
    {

        public long SelectShardIdForNewObject(T obj)
        {
            throw new System.NotImplementedException();
        }

        public long SelectShardIdForExistingObject(T obj)
        {
            var app = obj as App;
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
        private long GetSequentialStrategy(long shardId)
        {
            var shardWileList = new SqlDataReader().GetShardStrategyById(shardId);
            //return (shardPileList.Where(shardWile => shardWile.TotalCount <= shardWile.MaxCount).Select(
            //    shardWile => shardWile.ShardId)).FirstOrDefault();
            long vacantId = 0;
            foreach (var shardWile in shardWileList)
            {
                if(shardWile.TotalCount<=shardWile.MaxCount)
                {
                    vacantId = shardWile.ShardId;
                    break;
                }
            }
            return vacantId;
        }
    }
}

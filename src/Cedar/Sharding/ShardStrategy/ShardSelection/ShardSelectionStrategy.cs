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
            if (app != null)
            {
                var shard = app.Shards[0];
                return GetSequentialStrategy(shard.shard_id);
            }
            return 0;
        }
        private long GetSequentialStrategy(long shardId)
        {
            var shardPileList = new SqlDataReader().GetShardStrategyById(shardId);
            return (shardPileList.Where(shardWile => shardWile.MaxCount <= shardWile.TotalCount).Select(
                shardWile => shardWile.ShardId)).FirstOrDefault();
        }
    }
}

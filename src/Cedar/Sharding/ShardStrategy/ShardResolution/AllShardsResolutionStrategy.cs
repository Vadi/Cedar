using System.Collections.Generic;

namespace Cedar.Sharding.ShardStrategy.ShardResolution
{
    public class AllShardsResolutionStrategy : IShardResolutionStrategy
    {
        public IList<string> SelectShardIdsFromData(ShardResolutionStrategyData srsd)
        {
            //will force it to use all shards
            return null;
        }
    }
}

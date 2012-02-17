using System.Collections.Generic;

namespace Cedar.Sharding.ShardStrategy.ShardResolution
{
    public interface IShardResolutionStrategy
    {
        IList<string> SelectShardIdsFromData(ShardResolutionStrategyData srsd);
    }
}

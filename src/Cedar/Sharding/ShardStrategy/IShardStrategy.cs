using Cedar.Sharding.ShardStrategy.ShardAccess;
using Cedar.Sharding.ShardStrategy.ShardResolution;
using Cedar.Sharding.ShardStrategy.ShardSelection;

namespace Cedar.Sharding.ShardStrategy
{
    public interface IShardStrategy
    {
        IShardSelectionStrategy ShardSelectionStrategy { get; }
        IShardResolutionStrategy ShardResolutionStrategy { get; }
        IShardAccessStrategy ShardAccessStrategy { get; }
    }
}

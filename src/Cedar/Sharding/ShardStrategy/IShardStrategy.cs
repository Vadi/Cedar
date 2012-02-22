using Cedar.Sharding.ShardStrategy.ShardAccess;
using Cedar.Sharding.ShardStrategy.ShardResolution;
using Cedar.Sharding.ShardStrategy.ShardSelection;

namespace Cedar.Sharding.ShardStrategy
{
    public interface IShardStrategy<T>
    {
        IShardSelectionStrategy<T> ShardSelectionStrategy { get; }
        IShardResolutionStrategy ShardResolutionStrategy { get; }
        IShardAccessStrategy ShardAccessStrategy { get; }
    }
    public enum Strategy
    {
        Sequential,
        Regional
    }
}

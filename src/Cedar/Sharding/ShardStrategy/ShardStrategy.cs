using Cedar.Sharding.ShardStrategy.ShardAccess;
using Cedar.Sharding.ShardStrategy.ShardResolution;
using Cedar.Sharding.ShardStrategy.ShardSelection;

namespace Cedar.Sharding.ShardStrategy
{
    public class ShardStrategy<T>:IShardStrategy<T>
    {

        public IShardSelectionStrategy<T> ShardSelectionStrategy
        {
            get { return new ShardSelectionStrategy<T>(); }
        }

        public IShardResolutionStrategy ShardResolutionStrategy
        {
            get { throw new System.NotImplementedException(); }
        }

        public IShardAccessStrategy ShardAccessStrategy
        {
            get { throw new System.NotImplementedException(); }
        }
    }
    
}

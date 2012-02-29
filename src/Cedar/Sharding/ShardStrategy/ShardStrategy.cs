using Cedar.Sharding.ShardStrategy.ShardAccess;
using Cedar.Sharding.ShardStrategy.ShardResolution;
using Cedar.Sharding.ShardStrategy.ShardSelection;

namespace Cedar.Sharding.ShardStrategy
{
    /// <summary>
    /// 
    /// </summary>
    public class ShardStrategy : IShardStrategy
    {
        /// <summary>
        /// 
        /// </summary>
        public IShardSelectionStrategy ShardSelectionStrategy
        {
            get { return new ShardSelectionStrategy(); }
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

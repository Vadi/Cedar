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
        /// Return the shard selection strategy, i.e. on whic server the operation will be performed
        /// </summary>
        public IShardSelectionStrategy ShardSelectionStrategy
        {
            get { return new ShardSelectionStrategy(); }
        }

        /// <summary>
        /// Returns the shard resolution strategy in load balanicing scenario
        /// </summary>
        public IShardResolutionStrategy ShardResolutionStrategy
        {
            get { throw new System.NotImplementedException(); }
        }
        /// <summary>
        /// Returns the shard access strategy i.e. which shard will be accessed 
        /// </summary>
        public IShardAccessStrategy ShardAccessStrategy
        {
            get { throw new System.NotImplementedException(); }
        }
    }
    
}

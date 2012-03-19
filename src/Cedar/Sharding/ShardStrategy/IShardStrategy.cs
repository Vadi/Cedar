using Cedar.Sharding.ShardStrategy.ShardAccess;
using Cedar.Sharding.ShardStrategy.ShardResolution;
using Cedar.Sharding.ShardStrategy.ShardSelection;

namespace Cedar.Sharding.ShardStrategy
{
    /// <summary>
    ///
    /// </summary>
    public interface IShardStrategy
    {
        /// <summary>
        ///
        /// </summary>
        IShardSelectionStrategy ShardSelectionStrategy { get; }
        /// <summary>
        ///
        /// </summary>
        IShardResolutionStrategy ShardResolutionStrategy { get; }
        /// <summary>
        ///
        /// </summary>
        IShardAccessStrategy ShardAccessStrategy { get; }


    }
    /// <summary>
    ///
    /// </summary>
    public enum Strategy
    {
        /// <summary>
        /// Setup schema on demand in sequential order 
        /// </summary>
        Sequential,
        /// <summary>
        /// Setup schema automatically for new shard in sequntial order 
        /// </summary>
        SequentialAuto,
        /// <summary>
        ///Setup schema on demand on Regional basis
        /// </summary>
        Regional
    }
}
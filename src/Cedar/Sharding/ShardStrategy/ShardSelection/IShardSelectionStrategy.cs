namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    public interface IShardSelectionStrategy
    {
        long SelectShardIdForNewObject(object obj);
        long  SelectShardIdForExistingObject(object obj);
    }
}

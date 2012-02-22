namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    public interface IShardSelectionStrategy<T>
    {
        long SelectShardIdForNewObject(T obj);
        long  SelectShardIdForExistingObject(T obj);
    }
}

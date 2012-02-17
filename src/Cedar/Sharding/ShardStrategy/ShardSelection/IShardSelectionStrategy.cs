namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    public interface IShardSelectionStrategy
    {
        string SelectShardIdForNewObject(object obj);
        string SelectShardIdForExistingObject(object obj);
    }
}

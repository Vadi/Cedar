namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    public interface IShardSelectionStrategy
    {
        long SelectShardIdForNewObject(ShardStartegyData dto);
        long  SelectShardIdForExistingObject(ShardStartegyData dto);
    }


}

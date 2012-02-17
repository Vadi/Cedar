using System.Collections.Generic;


namespace Cedar.Sharding
{
    public class Shards : List<Shard>
    {
        public Shards()
        {

        }

        public Shards(IEnumerable<Shard> shards) : base(shards)
        {

        }
    }
}

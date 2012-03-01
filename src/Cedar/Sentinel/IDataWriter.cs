using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    public interface IDataWriter
    {
        void AddAppSchema(AppSchema appSchema);
        void EditAppSchema(string appName, AppSchema appSchema);
        void AddShard(Shard shard, ShardWile shardWile);
        void EditShard(long shardId,Shard shard, ShardWile shardWile);
    }
}

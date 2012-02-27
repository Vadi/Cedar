using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    public interface IDataReader
    {
        List<Shard> GetAllShardByAppname(string appName);
        Shard GetShardById(long shardId);
        List<Shard> GetAllShard();
        AppSchema GetAppSchema(long shardId);
        IList<ShardWile> GetShardStrategyById(long shardId);
        void UpdateShardWile(long shardId);
    }
  
}

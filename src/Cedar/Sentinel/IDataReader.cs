using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar.DataManager
{
    public interface IDataReader
    {
        List<Shard> GetAllShardByAppname(string appName);
        Shard GetShardById(long shardId);
        List<Shard> GetAllShard();
        void SetupSchema(long shardId, long uuid);
    }
  
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar.DataManager
{
    public class SqlDataReader : IDataReader
    {
        public List<Shard> GetAllShardByAppname(string appName)
        {
            throw new NotImplementedException();
        }

        public Shard GetShardById(long shardId)
        {
            throw new NotImplementedException();
        }

        public List<Shard> GetAllShard()
        {
            throw new NotImplementedException();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    class XmlDataReader : IDataReader
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
        public AppSchema GetAppSchema(long shardId)
        {
            throw new NotImplementedException();
        }


        public IList<ShardWile> GetShardStrategyById(long shardId)
        {
            throw new NotImplementedException();
        }


        public void UpdateShardWile(long shardId)
        {
            throw new NotImplementedException();
        }
    }
}

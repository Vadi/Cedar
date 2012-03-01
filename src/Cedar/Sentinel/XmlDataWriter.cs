using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace Cedar
{
    class XmlDataWriter : IDataWriter
    {

        public void AddAppSchema(AppSchema appSchema)
        {
            throw new NotImplementedException();
        }

        public void EditAppSchema(string appName, AppSchema appSchema)
        {
            throw new NotImplementedException();
        }

        public void AddShard(Shard shard, ShardWile shardWile)
        {
            throw new NotImplementedException();
        }

        public void EditShard(long shardId, Shard shard, ShardWile shardWile)
        {
            throw new NotImplementedException();
        }
    }
}
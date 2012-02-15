using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{

#if DEBUG
    public
#endif

#if !DEBUG
        internal
#endif
        class Shard
    {
        internal long ShardId { get; set; }
        internal string ConnectionString { get; set; }
    }
}

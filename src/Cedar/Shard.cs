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
        internal  long shard_id { get; set; }
        internal string application_name { get; set; }
        internal string connection_string { get; set; }
    }
}

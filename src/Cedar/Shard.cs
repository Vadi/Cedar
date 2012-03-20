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
        internal string db_type { get; set; }
        internal long total_count { get; set; }
        internal long max_count { get; set; }
        internal bool?  is_schema_exists { get; set; }

    }
}

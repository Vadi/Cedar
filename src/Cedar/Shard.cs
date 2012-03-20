using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{


    public class Shard
    {

        public  long shard_id { get; set; }
        public string application_name { get; set; }
        public string connection_string { get; set; }
        public string db_type { get; set; }
        public long total_count { get; set; }
        public long max_count { get; set; }
         internal bool?  is_schema_exists { get; set; }

    }
}

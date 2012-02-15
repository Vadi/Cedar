using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{

    internal class App
    {
        internal string ApplicationName { get; set; }
        internal long AppId { get; set; }
        internal IList<Shard> Shards { get; set; }
    }

}

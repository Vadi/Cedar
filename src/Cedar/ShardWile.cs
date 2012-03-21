using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    /// <summary>
    /// Keeps for details of ShardWile table
    /// </summary>
    public class ShardWile
    {
        public long Id { get; set; }
        public long ShardId { get; set; }
        public int TotalCount { get; set; }
        public int MaxCount { get; set; }
    }
}

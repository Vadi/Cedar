using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Sharding.ShardStrategy;

namespace Cedar
{
    /// <summary>
    /// 
    /// </summary>
    public class ShardStartegyData
    {
        /// <summary>
        /// 
        /// </summary>
        public Strategy StrategyType { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public string Region { get; set; }

        /// <summary>
        /// 
        /// </summary>
        internal App App { get; set; }
    }
}

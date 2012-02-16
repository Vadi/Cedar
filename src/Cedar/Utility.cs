using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    internal static class Utility
    {
        internal static Key GenerateKey(long shardId)
        {
            return new Key();
        }

        /// <summary>
        /// returns Shardid
        /// </summary>
        /// <returns></returns>
        internal static long DecomposeKey(long key)
        {
            return 0;
        }

    }
}

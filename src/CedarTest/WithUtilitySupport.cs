using System;

namespace CedarTest
{
    public class WithUtilitySupport
    {
        private System.Random randomGen = null;

        public WithUtilitySupport()
        {
            randomGen = new Random();
        }

        public long RandomKey()
        {
            return Convert.ToInt64(randomGen.NextDouble());
        }

        public long MeaningFullKey()
        {
            // Generate a dummy 64 bit key with shard id, timestamp, 

            return 0;
        }
    }
}
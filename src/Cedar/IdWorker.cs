using System;
using System.Threading;

namespace Cedar
{
    public class IdWorker
    {
        private long shardId;
        private readonly Func<long> timeMaker;
        private const long Epoch = 1288834974657L;
        private long sequence = 0L;
        private const long shardIdBits = 10L;


#if !DEBUG        
        private readonly long maxshardId = 0L;
        private readonly long maxDataCenterId = 0L;
#endif
        private const long SequenceBits = 12L;
        private readonly long shardIdShift = 0L;

        private long _decomposeShardMask;//=  12222222; // need a number whose 42-51 bits are On.
        private const long TimestampLeftShift = SequenceBits + shardIdBits;
        private readonly long sequenceMask;

        private static long _lastTimestamp = -1L;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="shardId"></param>
        /// <param name="timeMaker"></param>
        public IdWorker(long shardId, Func<long> timeMaker)
        {
            this.shardId = shardId;
            this.timeMaker = timeMaker;
            shardIdShift = SequenceBits;
            sequenceMask = -1L ^ (-1L << (int)SequenceBits);
#if !DEBUG
            maxshardId = -1L ^ (-1L << (int)shardIdBits);
            maxDataCenterId = -1L ^ (-1L << (int)DataCenterIdBits);

            if (shardId > maxshardId || shardId == 0)
                throw new ArgumentException(String.Format("Worker Id ({1}) cannot be greater than {0} or 0", maxshardId, shardId));
            if (dataCenterId > maxDataCenterId || maxDataCenterId == 0)
                throw new ArgumentException(String.Format("Datacenter Id cannot be greater than {0} or 0",
                                                          maxDataCenterId));
#endif
        }


        public IdWorker(long shardId) : this(shardId, new TimeMakerWithLocalTime().CurrentTimeMillis) { }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="s"></param>
        public void SetBeginSequence(long s)
        {
            Interlocked.Exchange(ref sequence, s);
        }


        /// <summary>
        /// 
        /// </summary>
        public long ShardId
        {
            get { return shardId; }
            set { shardId = value; }
        }

        /// <summary>
        /// 
        /// </summary>
        public long CurrentTimestampInMs
        {
            get
            {
                return this.timeMaker();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public long GetUniqueId()
        {
            var timestamp = this.timeMaker();

            if (_lastTimestamp == timestamp)
            {
                sequence = (sequence + 1) & sequenceMask;

                if (sequence == 0)
                {
                    timestamp = TillNextMillis(_lastTimestamp);
                }
            }
            else
            {
                sequence = 0;
            }

            if (timestamp < _lastTimestamp)
                throw new InvalidOperationException("Clock is moving backward!");

            _lastTimestamp = timestamp;

            var l = ((timestamp - Epoch) << (int)TimestampLeftShift) |
                    (shardId << (int)shardIdShift) |
                     sequence;

            return l;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public long DecomposeKey(long key)
        {
            CreateDecomposeMask();
            var shardId = (key & _decomposeShardMask);
            shardId = shardId >> (int)shardIdShift;
            return shardId;
        }


        /// <summary>
        /// creates a masks for extracting 10 bit of shard.
        /// </summary>
        private void CreateDecomposeMask()
        {
            var leftmask = -1L << 12;
            var rightmask = -1L << 22;
            _decomposeShardMask = leftmask ^ (rightmask);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="l"></param>
        /// <returns></returns>
        protected virtual long TillNextMillis(long l)
        {
            var timestamp = this.timeMaker();
            while (timestamp < _lastTimestamp)
                timestamp = this.timeMaker();
            return timestamp;
        }



        /// <summary>
        /// 
        /// </summary>
        public class TimeMakerWithLocalTime
        {
            private static readonly DateTime Jan1St1970 = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            public virtual long CurrentTimeMillis()
            {
                return (long)((DateTime.Now - Jan1St1970).TotalMilliseconds);
            }
        }


    }
}

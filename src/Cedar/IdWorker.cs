using System;
using System.Threading;

namespace IGD.DataLayer.Models
{
    public class IdWorker
    {
        private readonly long workerId;
        private readonly long dataCenterId;
        private readonly Func<long> timeMaker;

        private const long Epoch = 1288834974657L;
        private long sequence = 0L;

        private const long WorkerIdBits = 5L;
        private const long DataCenterIdBits = 5L;

#if !DEBUG        
        private readonly long maxWorkerId = 0L;
        private readonly long maxDataCenterId = 0L;
#endif
        private const long SequenceBits = 12L;
        private readonly long workerIdShift = 0L;

        private const long DatacenterIdShift = SequenceBits + WorkerIdBits;
        private const long TimestampLeftShift = SequenceBits + WorkerIdBits + DataCenterIdBits;
        private readonly long sequenceMask;

        private static long _lastTimestamp = -1L;

        public IdWorker(long workerId, long dataCenterId, Func<long> timeMaker)
        {
            this.workerId = workerId;
            this.dataCenterId = dataCenterId;
            this.timeMaker = timeMaker;


            workerIdShift = SequenceBits;
            sequenceMask = -1L ^ (-1L << (int)SequenceBits);
#if !DEBUG
            maxWorkerId = -1L ^ (-1L << (int)WorkerIdBits);
            maxDataCenterId = -1L ^ (-1L << (int)DataCenterIdBits);

            if (workerId > maxWorkerId || workerId == 0)
                throw new ArgumentException(String.Format("Worker Id ({1}) cannot be greater than {0} or 0", maxWorkerId, workerId));
            if (dataCenterId > maxDataCenterId || maxDataCenterId == 0)
                throw new ArgumentException(String.Format("Datacenter Id cannot be greater than {0} or 0",
                                                          maxDataCenterId));
#endif
        }


        public IdWorker(long workerId, long dataCenterId) : this(workerId, dataCenterId, new TimeMakerWithLocalTime().CurrentTimeMillis) { }

        public void SetBeginSequence(long s)
        {
            Interlocked.Exchange(ref sequence, s);
        }

        public long WorkerId
        {
            get { return workerId; }
        }

        public long DataCenterId
        {
            get { return dataCenterId; }
        }

        public long CurrentTimestampInMs
        {
            get
            {
                return this.timeMaker();
            }
        }

        public long NextId()
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
                     (dataCenterId << (int)DatacenterIdShift) |
                     (workerId << (int)workerIdShift) |
                     sequence;

            return l;
        }

        protected virtual long TillNextMillis(long l)
        {
            var timestamp = this.timeMaker();
            while (timestamp < _lastTimestamp)
                timestamp = this.timeMaker();
            return timestamp;
        }

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    internal class Key
    {
        internal byte[] TimeStamp { get; set; }
        internal byte[] SequenceNo { get; set; }
        internal byte[] ShardId { get; set; }
      
        //internal Key key { get; set; }
        
        internal long  GetKey()
        {
            return 0;
        }
        
                
    }
}

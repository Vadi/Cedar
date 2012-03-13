using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Sharding.ShardStrategy;

namespace IGD.Client
{
    class RegionalStartegy : IShardStrategy
    {
        public Cedar.Sharding.ShardStrategy.ShardSelection.IShardSelectionStrategy ShardSelectionStrategy
        {
            get { return  new RegionalSelectionStartegy();}
        }

        public Cedar.Sharding.ShardStrategy.ShardResolution.IShardResolutionStrategy ShardResolutionStrategy
        {
            get { throw new NotImplementedException(); }
        }

        public Cedar.Sharding.ShardStrategy.ShardAccess.IShardAccessStrategy ShardAccessStrategy
        {
            get { throw new NotImplementedException(); }
        }
    }

    public class RegionalSelectionStartegy : Cedar.Sharding.ShardStrategy.ShardSelection.IShardSelectionStrategy 
    {
        public long SelectShardIdForNewObject(Cedar.ShardStartegyData dto)
        {
            throw new NotImplementedException();
        }

        public long SelectShardIdForExistingObject(Cedar.ShardStartegyData dto)
        {
            if (dto.Region == "Pinellas")
            {
                return 1003;
            }
            return 1012;
            
        }
    }
}

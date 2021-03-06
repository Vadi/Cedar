﻿using System.Collections.Generic;
using System.Linq;

namespace Cedar.Sharding.ShardStrategy.ShardSelection
{
    /// <summary>
    /// 
    /// </summary>
    public class ShardSelectionStrategy : IShardSelectionStrategy
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public long SelectShardIdForNewObject(ShardStartegyData obj)
        {
            throw new System.NotImplementedException();
        }

        /// <summary>
        /// Returns the available shard
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public long SelectShardIdForExistingObject(ShardStartegyData obj)
        {
            long shardId = 0;
            switch (obj.StrategyType)
            {
                case Strategy.Sequential:
                    {
                        var app = obj.App;
                
                        if (app != null && app.Shards.Count > 0)
                        {
                           // var shardWileList = new SqlDataReader().GetShardStrategy();
                            foreach (var shard in app.Shards)
                            {

                               // shardId = GetSequentialStrategy(shard.shard_id,shardWileList);
                                if (shard.total_count < shard.max_count)
                                {
                                    shardId = shard.shard_id;
                                }
                                if (shardId > 0)
                                {
                                    break;
                                }

                            }
                        }
                    }
                    break;
                case Strategy.Regional:
                    break;
            }
            return shardId;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="shardId"></param>
        /// <returns></returns>
        private long GetSequentialStrategy(long shardId,IList<ShardWile> shardWileList)
        {
          //  var shardWileList = new SqlDataReader().GetShardStrategyById(shardId);
            //return (shardPileList.Where(shardWile => shardWile.TotalCount <= shardWile.MaxCount).Select(
            //    shardWile => shardWile.ShardId)).FirstOrDefault();
            return (from shardWile in shardWileList where shardWile.ShardId.Equals(shardId) && shardWile.TotalCount < shardWile.MaxCount select shardWile.ShardId).FirstOrDefault();
        }

       
    }
}

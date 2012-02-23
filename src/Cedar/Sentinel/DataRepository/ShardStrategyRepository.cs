using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dapper;

namespace Cedar
{
    public class ShardStrategyRepository:BaseRepository 
    {
        public IList<ShardWile> GetShardStrategyById(long shardId)
        {

            using (var connection = GetConnection())
            {
                string query = "Select Id,ShardId,TotalCount, MaxCount from shardwile" +
                                     " WHERE ShardId = @ShardId";

                var parameters = new DynamicParameters();

                parameters.Add("@ShardId", shardId);

                var shardPileList = connection.Query<ShardWile>(query, parameters).ToList();

                return shardPileList;
            }
        }

    }
}

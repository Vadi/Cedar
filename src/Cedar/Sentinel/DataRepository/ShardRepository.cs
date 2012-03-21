using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

using Dapper;
using System.Data.OleDb;


namespace Cedar
{
   /// <summary>
   ///Shard Repository 
   /// </summary>
    public class ShardRepository : BaseRepository
    {
        /// <summary>
        /// Get all shards stored in the Cedar database
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Shard> GetAllShard()
        {
            using (var connection = GetConnection())
            {
                IEnumerable<Shard> shardList = connection.Query<Shard>("Select shard_id, connection_string,db_type,is_schema_exists from shard");

                return shardList;
            }
        }
        /// <summary>
        /// Get all shards for a given application  stored in the Cedar database
        /// </summary>
        /// <param name="applicationName"></param>
        /// <returns></returns>
        public IEnumerable<Shard> GetAllShard(string applicationName)
        {
            using (var connection = GetConnection())
            {
                string query = "Select shard_id,application_name, connection_string,db_type,[total_count],[max_count],is_schema_exists from shard where application_name=@appname";


                var parameters = new DynamicParameters();

                parameters.Add("@appname", applicationName);
                IEnumerable<Shard> shardList = connection.Query<Shard>(query, parameters);
                return shardList;
            }
        }
        /// <summary>
        /// Get shards information for given shard id
        /// </summary>
        /// <param name="shardId"></param>
        /// <returns></returns>
        public Shard GetShardById(long shardId)
        {

            using (var connection = GetConnection())
            {
                string query = "Select shard_id,application_name, connection_string,db_type,is_schema_exists from shard" +
                                     " WHERE shard_id = @shard_id";

                var parameters = new DynamicParameters();

                parameters.Add("@shard_id", shardId);

                var shard = connection.Query<Shard>(query, parameters).FirstOrDefault();

                return shard;
            }
        }
        /// <summary>
        /// Get the application schema for a given application name
        /// </summary>
        /// <param name="applicationName"></param>
        /// <returns></returns>
        public AppSchema GetAppSchema(string applicationName)
        {

            using (var connection = GetConnection())
            {
                string query = "Select application_id,application_name,[schema] from AppSchema" +
                                     " WHERE application_name = @app_name";

                var parameters = new DynamicParameters();

                parameters.Add("@app_name", applicationName, DbType.String, ParameterDirection.Input, 200);


                var appSchema = connection.Query<AppSchema>(query, parameters).FirstOrDefault();

                return appSchema;
            }
        }
        /// <summary>
        /// Update the schema setup status
        /// </summary>
        /// <param name="shardId"></param>
        internal void UpdateShard(long shardId)
        {
            using (var connection = GetConnection())
            {
                string query = "update Shard set is_schema_exists=1 WHERE shard_id = @SId";
                var parameters = new DynamicParameters();
                parameters.Add("@SId", shardId);
                connection.Execute(query, parameters);
            }
        }
        /// <summary>
        /// Updates the total count on a shard
        /// </summary>
        /// <param name="shardId"></param>
        internal void UpdateShardCount(long shardId)
        {
            using (var connection = GetConnection())
            {
                string query = "update Shard set total_count=(total_count)+1 WHERE shard_id = @SId";
                var parameters = new DynamicParameters();
                parameters.Add("@SId", shardId);
                connection.Execute(query, parameters);
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

using Dapper;
using System.Data.OleDb;


namespace Cedar
{    
    public class ShardRepository : BaseRepository
    {

        public IEnumerable<Shard> GetAllShard()
        {                        
             using (var connection = GetConnection())
             {
<<<<<<< HEAD
                 IEnumerable<Shard> shardList = connection.Query<Shard>("Select shard_id, application_name, connection_string from shard");
=======
                 IEnumerable<Shard> shardList = connection.Query<Shard>("Select shard_id, connection_string,db_type from shard");
>>>>>>> d4b85edc452fe7942e7d1bb5214a700fc9064bd4

                 return shardList;
             }                    
        }
        public IEnumerable<Shard> GetAllShard(string applicationName)
        {
            using (var connection = GetConnection())
            {
                string query = "Select shard_id, connection_string,db_type from shard where application_name=@appname";

              
                var parameters = new DynamicParameters();

                parameters.Add("@appname", applicationName);
                IEnumerable<Shard> shardList = connection.Query<Shard>(query, parameters);
                return shardList;
            }
        } 
        public Shard GetShardById( long shardId)
        {
           
            using (var connection = GetConnection())
            {
                string query = "Select shard_id,application_name, connection_string,db_type from shard" +
                                     " WHERE shard_id = @shard_id";

                var parameters = new DynamicParameters();

                parameters.Add("@shard_id", shardId);

                var shard = connection.Query<Shard>(query, parameters).FirstOrDefault();

                return shard;
            }
        }

        public AppSchema GetAppSchema(string applicationName)
        {

            using (var connection = GetConnection())
            {
                string query = "Select application_id,application_name,[schema] from AppSchema" +
                                     " WHERE application_name = @app_name";

                var parameters = new DynamicParameters();

                parameters.Add("@app_name", applicationName,DbType.String,ParameterDirection.Input ,200);
               

                var appSchema = connection.Query<AppSchema>(query, parameters).FirstOrDefault();

                return appSchema;
            }
        }
    }
}

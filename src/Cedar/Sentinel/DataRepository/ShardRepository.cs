using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

using Dapper;
using System.Data.OleDb;


namespace Cedar
{
    /*public class ShardRepository : DataRepository<Shard>
{

public override void CreateMapping(Mapping<Shard> mapping)
{
mapping.Named("Shard");

mapping.Identity(e => e.ShardId).Named("shard_id").DbType("bigint not null").PrimaryKey();
mapping.Map(e => e.ConnectionString).Named("connection_string").DbType("varchar(4000) not null");
}

public List<Shard> GetAllShard()
{
return Get(t => t.ShardId > 0).ToList();
}

}*/

    public class ShardRepository : BaseRepository
    {

        public IEnumerable<Shard> GetAllShard()
        {
            using (var connection = GetConnection())
            {
                IEnumerable<Shard> shardList = connection.Query<Shard>("Select shard_id, connection_string,db_type,is_schema_exists from shard");

                return shardList;
            }
        }

        public IEnumerable<Shard> GetAllShard(string applicationName)
        {
            using (var connection = GetConnection())
            {
                string query = "Select shard_id, connection_string,db_type,[total_count],[max_count],is_schema_exists from shard where application_name=@appname";


                var parameters = new DynamicParameters();

                parameters.Add("@appname", applicationName);
                IEnumerable<Shard> shardList = connection.Query<Shard>(query, parameters);
                return shardList;
            }
        }
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

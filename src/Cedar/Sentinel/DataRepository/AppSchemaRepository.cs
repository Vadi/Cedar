using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dapper;

namespace Cedar.Sentinel.DataRepository
{
    public class AppSchemaRepository : BaseRepository
    {
        public void AddSchema(string applicationName,string applicationSchema)
        {
            using (var connection = GetConnection())
            {
                string query = "insert into appschema (application_name,[schema]) values (@appName,@appSchema)";

                var parameters = new DynamicParameters();

                parameters.Add("appName", applicationName);
                parameters.Add("appSchema", applicationSchema);
                connection.Execute(query, parameters);
            }
        }
        public void UpdateAppSchema(string applicationName, string applicationSchema)
        {
            using (var connection = GetConnection())
            {
                string query = "update appschema set [schema]=@appSchema where application_name=@appName";

                var parameters = new DynamicParameters();

                parameters.Add("appName", applicationName);
                parameters.Add("appSchema", applicationSchema);
                connection.Execute(query, parameters);
            }
        }
        public void DeleteApplication(string applicationName)
        {
            using (var connection = GetConnection())
            {
                string query = "delete appschema where application_name=@appName";

                var parameters = new DynamicParameters();

                parameters.Add("appName", applicationName);
                
                connection.Execute(query, parameters);
            }
        }
    }
    
    
}

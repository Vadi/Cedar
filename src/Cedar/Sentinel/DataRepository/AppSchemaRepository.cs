using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dapper;

namespace Cedar.Sentinel.DataRepository
{
    public class AppSchemaRepository : BaseRepository
    {
        /// <summary>
        /// Add the application schema
        /// </summary>
        /// <param name="applicationName"></param>
        /// <param name="applicationSchema"></param>
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
        /// <summary>
        /// Updates the application schema
        /// </summary>
        /// <param name="applicationName"></param>
        /// <param name="applicationSchema"></param>
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
        /// <summary>
        /// Delete the application schema
        /// </summary>
        /// <param name="applicationName"></param>
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

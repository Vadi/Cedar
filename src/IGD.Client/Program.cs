using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using log4net;
using IGD.Client.Dapper;
using Cedar;
namespace IGD.Client
{
    class Program
    {
        static readonly ILog log = LogManager.GetLogger(typeof(Program));
        static void Main(string[] args)
        {
            var ctx = CedarAppStore.Instance.GetContextOf("IGDTEST");
            ctx.ShardStrategy = new RegionalStartegy();
            var uuid= ctx.SetupSchema(new ShardStartegyData() {Region = "Pinellas"});

            string connectionString = @"server=192.168.1.20;uid=praveen_aw;pwd=praveen@jan20;database=IGD_STAGE";
            var connection = GetConnection(connectionString, "MySql");
            connection.Query("insert into counties values(@uid,@region)", new {uid = uuid, region = "Pinellas"});
        }

        public List<IGDDTO> FetchData()
        {
            string connectionString = @"server=192.168.1.20;uid=praveen_aw;pwd=praveen@jan20;database=IGD_STAGE";
            var connection = GetConnection(connectionString,"sql");
            List<IGDDTO> iGDList = connection.Query<IGDDTO>(@"Select * from igd").ToList();
            return iGDList;
            
           
        }

        private static  DbConnection GetConnection(string connectionString, string dbType)
        {
            string providerName = String.Empty;


            //try to build connection string for sql
            var builder = new DbConnectionStringBuilder();

            builder.ConnectionString = connectionString;

            if (builder.ContainsKey("provider"))
            {
                providerName = builder["provider"].ToString();
            }
            if (String.IsNullOrEmpty(providerName))
            {
                switch (dbType)
                {
                    case "MySql":
                        providerName = "MySql.Data.MySqlClient";
                        break;
                    default:
                        providerName = "System.Data.SqlClient";
                        break;
                }
            }
            if (!String.IsNullOrEmpty(providerName))
            {
                var providerExists = DbProviderFactories

                                            .GetFactoryClasses()
                                            .Rows.Cast<DataRow>()
                                            .Any(r => r[2].Equals(providerName));
                if (providerExists)
                {
                    var factory = DbProviderFactories.GetFactory(providerName);
                    return factory.CreateConnection();
                }
                else if (dbType != null && dbType.ToLower() == "mysql")
                {
                    return new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                }
            }
            return null;
        }
    }
}

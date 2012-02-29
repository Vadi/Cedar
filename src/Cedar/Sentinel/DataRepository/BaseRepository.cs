using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Configuration;

namespace Cedar
{
    public class BaseRepository
    {


        public IDbConnection GetConnection()
        {

            // string connectionString = @"Provider=Microsoft.SQLSERVER.CE.OLEDB.3.5;Data Source=Data\CedarData.sdf";
            string connectionString = Properties.Settings.Default.CedarDataConnectionString;
            //string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=myDB;User ID=sa;password=123;Provider=SQLOLEDB";
            // string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=myDB;User ID=sa;password=123";

            var connection = new OleDbConnection(connectionString);
            //var connection = new SqlConnection(connectionString);

            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            return connection;
        }
        public IDbCommand GetCommand(IDbConnection connection)
        {
            IDbCommand command = new OleDbCommand();
            command.Connection = connection;
            return command;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Configuration;

namespace Cedar
{
    public class BaseRepository
    {

        public OleDbConnection GetConnection()
        {            
           
          //  string connectionString = @"Provider=Microsoft.SQLSERVER.CE.OLEDB.3.5;Data Source=|DataDirectory|\Data\CedarData.sdf";


            
            string connectionString = Properties.Settings.Default.CedarDataConnectionString ;
           
            var connection = new OleDbConnection(connectionString);
            
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            return connection;
        }

    }
}

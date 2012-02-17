using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Configuration;

namespace Cedar.DataManager
{
    public class BaseRepository
    {

        public OleDbConnection GetConnection()
        {            
            //string strCon = @"Provider=Microsoft.SQLSERVER.CE.OLEDB.3.5;Data Source=D:\Projects\Cedar\src\Cedar\Data\CedarData.sdf";
            // string connectionString = ConfigurationManager.ConnectionStrings["Cedar.Connection"].ConnectionString;
            string connectionString = @"Provider=Microsoft.SQLSERVER.CE.OLEDB.3.5;Data Source=|DataDirectory|\Data\CedarData.sdf";
            var connection = new OleDbConnection(connectionString);
            
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            return connection;
        }

    }
}

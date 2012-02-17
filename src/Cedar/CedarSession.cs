using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Balancer;
using System.Data;
using System.Data.SqlClient;
using System.Data.OracleClient;
using System.Data.Odbc;
using System.Data.OleDb;
using Dapper;
namespace Cedar
{
    public class CedarSession: ICedarSession
    {
        private IDbConnection _sqlConnection = null;
        private long _uuid;
        String _connectionString = String.Empty;
        public bool disposed { get; set; }
        private int _commandTimeout = 30;
        private System.Data.CommandType? _commandType = null; 
        public int CommandTimeout { get { return _commandTimeout; } set { _commandTimeout = value; } }
        private IDbTransaction _transaction=null ;
        public bool EnableTrasaction { get; set; }
        public CedarSession(long uuid)
        {
            _uuid = uuid;
            setConnectionString();
            GetOpenConnection();
            
        }
        /// <summary>
        /// Dispose the object
        /// </summary>
        public void Close()
        {
           Dispose();
        }
        private void setConnectionString()
        {
            var reader = new Cedar.DataManager.SqlDataReader();
            var shard = reader.GetShardById(_uuid);
            _connectionString = shard.connection_string  ;
        }
        public AppContext GetAppContext()
        {
            throw new NotImplementedException();
        }
        internal void SetupSchema(App app,AppSchema appSchema)
        {
            _commandType = System.Data.CommandType.Text;
            _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, appSchema.schema , app.AppId, _transaction, _commandTimeout, _commandType);

        }
        /// <summary>
        /// Execute the query 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <param name="commandType"></param>
        /// <returns>>Number of rows affected</returns>
        public int Insert(string sql, dynamic param = null, Cedar.CommandType ? commandType = null)
        {
            if (commandType!=null )
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
          return SqlMapper.Execute(_sqlConnection,sql,param ,_transaction ,_commandTimeout ,_commandType);
        }

        public void Update(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null)
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }

        public void Delete(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null)
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }

        public IEnumerable<dynamic> Select(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null)
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Query<dynamic>(_sqlConnection, sql, param, _transaction, true, _commandTimeout, _commandType);
        }
      
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposed)
            {
                if (disposing)
                {
                    //dispose connection
                    if (_sqlConnection != null)
                    {
                        _transaction = null;
                        _sqlConnection.Close();
                        _sqlConnection.Dispose();
                        _sqlConnection = null;
                    }
                }
               
                disposed = true;
            }
        }
        ~CedarSession()
        {
            Dispose(false);
        }

        private void GetOpenConnection()
        {
            if(_sqlConnection ==null && !String.IsNullOrEmpty(_connectionString))
            {
                string provider = GetProvider(_connectionString);
                switch(provider)
                {
                    case "SQL":
                        _sqlConnection = new SqlConnection(_connectionString);
                       break;
                    case "ORACLE":
                        _sqlConnection = new OracleConnection(_connectionString);
                        break;
                    case "ODBC":
                        _sqlConnection = new OdbcConnection(_connectionString);
                        break;
                    case "OLEDB":
                        _sqlConnection = new OleDbConnection(_connectionString);
                        break;
                }
                
                _sqlConnection.Open();
               
            }

        }
        public string GetProvider(string connectionString)
        {
            string  provider = "SQL";
            object objProvider = null;
            try
            {
                //try to build connection string for sql
                var builder = new SqlConnectionStringBuilder(connectionString);
                
            }
            catch (Exception)
            {
                try
                {
                    //try to build connection string for oracle
                    var builder = new OracleConnectionStringBuilder(connectionString);
                    provider = "ORACLE";
                }
                catch (Exception)
                {

                    try
                    {
                        //try to build connection string for oracle
                        var builder = new OdbcConnectionStringBuilder(connectionString);
                        provider = "ODBC";
                    }
                    catch (Exception)
                    {
                        try
                        {
                            //try to build connection string for oracle
                            var builder = new OleDbConnectionStringBuilder(connectionString);
                            provider = "OLEDB";
                        }
                        catch (Exception)
                        {
                            throw;

                        }

                    }
                }
                
            } 
           
           
            return provider;
        }

     
    }

    public enum CommandType
    {
        Query,
        StoredProcedure
    }
    
}

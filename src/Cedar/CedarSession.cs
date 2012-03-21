using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using System.IO;
using System.Linq;
using System.Text;
using Cedar.Balancer;
using System.Data;
using System.Data.SqlClient;
using System.Data.OracleClient;
using System.Data.Odbc;
using System.Data.OleDb;
using Dapper;
using log4net;

namespace Cedar
{
    /// <summary>
    /// This class creates session to execute select, insert,update and delete query.
    /// </summary>
    public class CedarSession : ICedarSession
    {
       // readonly ILog log = LogManager.GetLogger(typeof(CedarSession));
        private IDbConnection _sqlConnection = null;
        private long _uuid;
        String _connectionString = String.Empty;
        String _dbType = String.Empty;
        public bool disposed { get; set; }
        private int _commandTimeout = 30;
        private System.Data.CommandType? _commandType = null;
        public int CommandTimeout { get { return _commandTimeout; } set { _commandTimeout = value; } }
        private IDbTransaction _transaction = null;
        public bool EnableTrasaction { get; set; }
        public CedarSession(long uuid)
        {
            _uuid = uuid;
            SetConnectionString();
            GetOpenConnection();

        }


        /// <summary>
        /// Dispose the object
        /// </summary>
        public void Close()
        {
            Dispose();
        }
        /// <summary>
        /// Set the connection string to specific shard on the basis of Unique Id
        /// </summary>
        private void SetConnectionString()
        {
            var reader = new Cedar.SqlDataReader();
            IdWorker worker=new IdWorker(_uuid);
            var shrdId = worker.DecomposeKey(_uuid);
            var shard = reader.GetShardById(shrdId);
            if(shard==null)
            {
                throw new Exception("Invalid UUID");
            }
            _connectionString = shard.connection_string;
            _dbType = shard.db_type;
        }
       /// <summary>
       ///Read the schema from file in Schema dump folder 
       /// and Setup the schema (table, view , stored procedure etc) on different shards 
       /// </summary>
       /// <param name="appSchema"></param>
        internal void SetupSchema(AppSchema appSchema)
        {
            try
            {
                var schema = GetSchemaFromFile(appSchema.schema);
                _commandType = System.Data.CommandType.Text;
                _transaction = _sqlConnection.BeginTransaction();
                string query = GetSchemaQuery(schema);
                _sqlConnection.Execute(query, null, _transaction, _commandTimeout, _commandType);
                _transaction.Commit();
                _transaction.Dispose();
            }
            catch (Exception exception)
            {
                //log.Error(string.Format("Error in setup schema for : {0}", appSchema.application_name), exception);
                throw ;
            }
            

        }
        /// <summary>
        /// Get the schema from file in Schema dump folder
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        internal string GetSchemaFromFile(string fileName)
        {
            try
            {
                var executionApth = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Schema Dump",
                                                           fileName);
                var schema = System.IO.File.ReadAllText(executionApth);
                return GetSchemaQuery(schema);
            }
            catch (Exception exception)
            {
                //log.Error(string.Format("Error in setup schema for : {0}", fileName), exception);
                throw;
            }
            

        }
        /// <summary>
        /// Get the schema file name for an application
        /// </summary>
        /// <param name="schema"></param>
        /// <returns></returns>
        private string GetSchemaQuery(string schema)
        {
            string newQuery = String.Empty;
            var table = new Table();
            table.UUID = _uuid.ToString();
            newQuery = schema.FormatWith(table);
            return newQuery;
        }
        /// <summary>
        /// Execute the insert query 
        /// </summary>
        /// <param name="sql">sql query or procedure name</param>
        /// <param name="param">parameters dictionary</param>
        /// <param name="commandType">command type (text or stored procedure)</param>
        /// <returns>>Number of rows affected</returns>
        public int Insert(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null && (commandType.Value ==CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
                _commandType = System.Data.CommandType.StoredProcedure;
            else
                _commandType = System.Data.CommandType.Text;
           
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }
        /// <summary>
        /// Execute the Update query 
        /// </summary>
        /// <param name="sql">sql query or procedure name</param>
        /// <param name="param">parameters dictionary</param>
        /// <param name="commandType">command type (text or stored procedure)</param>
        /// <returns>>Number of rows affected</returns>
        public void Update(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null && (commandType.Value == CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
                _commandType = System.Data.CommandType.StoredProcedure;
            else
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }
        /// <summary>
        /// Execute the Delete query 
        /// </summary>
        /// <param name="sql">sql query or procedure name</param>
        /// <param name="param">parameters dictionary</param>
        /// <param name="commandType">command type (text or stored procedure)</param>
        /// <returns>>Number of rows affected</returns>
        public void Delete(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null && (commandType.Value == CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
                _commandType = System.Data.CommandType.StoredProcedure;
            else
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }
        /// <summary>
        /// Get the generic type result set  
        /// </summary>
        /// <param name="sql">sql query or procedure name</param>
        /// <param name="param">parameters dictionary</param>
        /// <param name="commandType">command type (text or stored procedure)</param>
        /// <returns>>Number of rows affected</returns>
        public IEnumerable<T> Select<T>(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null && (commandType.Value == CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
                _commandType = System.Data.CommandType.StoredProcedure;
            else
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Query<T>(_sqlConnection, sql, param, _transaction, true, _commandTimeout, _commandType);
        }
        /// <summary>
        /// Get the object type result set
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <param name="commandType"></param>
        /// <returns></returns>
        public IEnumerable<dynamic> Select(string sql, dynamic param = null, CommandType? commandType = null)
        {
            if (commandType != null && (commandType.Value == CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
                _commandType = System.Data.CommandType.StoredProcedure;
            else
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Query<dynamic>(_sqlConnection, sql, param, _transaction, true, _commandTimeout, _commandType);
        }
       /// <summary>
       /// Dispose the instance of this class
       /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        /// <summary>
        ///Dispose the instance of this class
        /// </summary>
        /// <param name="disposing"></param>
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
        /// <summary>
        /// Destructor of the class
        /// </summary>
        ~CedarSession()
        {
            Dispose(false);
        }
        /// <summary>
        /// Get the opened connection for given connection string
        /// </summary>
        private void GetOpenConnection()
        {
            if (_sqlConnection == null && !String.IsNullOrEmpty(_connectionString))
            {
                _sqlConnection = GetConnection(_connectionString);
               if(_sqlConnection!=null )
               {
                   //log.Info(string.Format("connecting to server : {0}", _connectionString));
                   _sqlConnection.ConnectionString = _connectionString;
                   try
                   {
                       _sqlConnection.Open();   
                   }
                   catch (Exception ex)
                   {
                       //log.Error(string.Format("Failed to  connect server : {0}", _connectionString),ex);
                       throw;
                   }
                   
               }
               else
               {
                   
                   throw new Exception("Connection string can not be null, you may not specified the provider");
               }

            }

        }
        /// <summary>
        /// Get the connection object for given provider given along with connection string
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        private DbConnection GetConnection(string connectionString)
        {
            string providerName=String.Empty ;


            //try to build connection string for sql
            var builder = new DbConnectionStringBuilder();

            builder.ConnectionString = connectionString;

            if (builder.ContainsKey("provider"))
            {
                providerName = builder["provider"].ToString();
            }
            if (String.IsNullOrEmpty(providerName))
            {
                switch (_dbType)
                {
                    case "MySql"  :
                        providerName = "MySql.Data.MySqlClient";
                        break;
                    default :
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
                else if(_dbType!=null && _dbType.ToLower() =="mysql")
                {
                    return new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                }
            

            }

            
            return null;
        }

       
    }
    /// <summary>
    /// Command type 
    /// Query : ANSI sql query
    /// StoredProcedure: name of stored procedure
    /// </summary>
    public enum CommandType
    {
        Query,
        StoredProcedure
    }
    public class Table
    {
        public string UUID { get; set; }
    }
}

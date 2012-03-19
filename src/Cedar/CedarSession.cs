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
    public class CedarSession : ICedarSession
    {
        readonly ILog log = LogManager.GetLogger(typeof(CedarSession));
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
                log.Error(string.Format("Error in setup schema for : {0}", appSchema.application_name), exception);
                throw ;
            }
            

        }

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
                log.Error(string.Format("Error in setup schema for : {0}", fileName), exception);
                throw;
            }
            

        }

        private string GetSchemaQuery(string schema)
        {
            string newQuery = String.Empty;
            var table = new Table();
            table.UUID = _uuid.ToString();
            newQuery = schema.FormatWith(table);
            return newQuery;
        }
        /// <summary>
        /// Execute the query 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <param name="commandType"></param>
        /// <returns>>Number of rows affected</returns>
        public int Insert(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null || (commandType.HasValue && commandType.Value ==CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
                _commandType = System.Data.CommandType.StoredProcedure;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }

        public void Update(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null || (commandType.HasValue && commandType.Value == CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }

        public void Delete(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null || (commandType.HasValue && commandType.Value == CommandType.Query))
                _commandType = System.Data.CommandType.Text;
            else if (commandType.HasValue && (commandType.Value == CommandType.StoredProcedure))
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
        }

        public IEnumerable<T> Select<T>(string sql, dynamic param = null, Cedar.CommandType? commandType = null)
        {
            if (commandType != null)
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Query<dynamic>(_sqlConnection, sql, param, _transaction, true, _commandTimeout, _commandType);
        }
        public IEnumerable<dynamic> Select(string sql, dynamic param = null, CommandType? commandType = null)
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
            if (_sqlConnection == null && !String.IsNullOrEmpty(_connectionString))
            {
                _sqlConnection = GetConnection(_connectionString);
               if(_sqlConnection!=null )
               {
                   log.Info(string.Format("connecting to server : {0}", _connectionString));
                   _sqlConnection.ConnectionString = _connectionString;
                   try
                   {
                       _sqlConnection.Open();   
                   }
                   catch (Exception ex)
                   {
                       log.Error(string.Format("Failed to  connect server : {0}", _connectionString),ex);
                       throw;
                   }
                   
               }
               else
               {
                   
                   throw new Exception("Connection string can not be null, you may not specified the provider");
               }

            }

        }
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

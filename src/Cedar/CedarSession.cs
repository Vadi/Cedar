using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
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
    public class CedarSession : ICedarSession
    {
        private IDbConnection _sqlConnection = null;
        private long _uuid;
        String _connectionString = String.Empty;
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
            //worker.DecomposeKey()
            var shard = reader.GetShardById(_uuid);
            _connectionString = shard.connection_string;
        }
       
        internal void SetupSchema(App app, AppSchema appSchema)
        {
            _commandType = System.Data.CommandType.Text;
            _transaction = _sqlConnection.BeginTransaction();
            SqlMapper.Execute(_sqlConnection, appSchema.schema, app.AppId, _transaction, _commandTimeout, _commandType);

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
            if (commandType != null)
                _commandType = System.Data.CommandType.Text;
            if (EnableTrasaction)
                _transaction = _sqlConnection.BeginTransaction();
            return SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, _commandType);
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
            if (_sqlConnection == null && !String.IsNullOrEmpty(_connectionString))
            {
                _sqlConnection = GetConnection(_connectionString);
               if(_sqlConnection!=null )
               {

                   _sqlConnection.ConnectionString = _connectionString;

                   _sqlConnection.Open();   
               }
               else
               {
                   throw new Exception("Connection string can not be null, you may not specified the provider name");
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
                providerName = "System.Data.SqlClient";
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

            

            }

            
            return null;
        }


    }

    public enum CommandType
    {
        Query,
        StoredProcedure
    }

}

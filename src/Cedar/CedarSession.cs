using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Balancer;
using System.Data;
using System.Data.SqlClient;
using Dapper;
namespace Cedar
{
    public class CedarSession: ICedarSession
    {
        private SqlConnection _sqlConnection = null;
        private long _uuid;
        String _connectionString = String.Empty;
        public bool disposed { get; set; }
        private int _commandTimeout = 30;
        public int CommandTimeout { get { return _commandTimeout; } set { _commandTimeout = value; } }
        private IDbTransaction _transaction=null ;
        public CedarSession(long uuid)
        {
            _uuid = uuid;
            setConnectionString();
            GetSqlOpenConnection();
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
           // var shard = new Cedar.DataManager.SqlDataReader().GetShardById(_uuid);
            //_connectionString = shard.;
        }
        public AppContext GetAppContext()
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Execute the query 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <param name="commandType"></param>
        /// <returns>>Number of rows affected</returns>
        public int Insert(string sql, dynamic param = null, CommandType? commandType = null)
        {
          return SqlMapper.Execute(_sqlConnection,sql,param ,_transaction ,_commandTimeout ,commandType);
        }

        public void Update(string sql, dynamic param = null,  CommandType? commandType = null)
        {
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, commandType);
        }

        public void Delete(string sql, dynamic param = null, CommandType? commandType = null)
        {
            SqlMapper.Execute(_sqlConnection, sql, param, _transaction, _commandTimeout, commandType);
        }

        public IEnumerable<dynamic> Select(string sql, dynamic param = null,  CommandType? commandType = null)
        {
            return SqlMapper.Query<dynamic>(_sqlConnection, sql, param, _transaction, true, _commandTimeout, commandType);
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

        private void GetSqlOpenConnection()
        {
            if(_sqlConnection ==null && !String.IsNullOrEmpty(_connectionString))
            {
                _sqlConnection = new System.Data.SqlClient.SqlConnection
                {
                    ConnectionString = _connectionString,

                };
                _sqlConnection.Open();
            }

        }

       
    }

    
}

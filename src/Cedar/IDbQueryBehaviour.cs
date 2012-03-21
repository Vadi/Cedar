using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data ;

namespace Cedar
{
    /// <summary>
    /// Query behavior type
    /// </summary>
    public interface IDbQueryBehaviour
    {
        int Insert(string sql, dynamic param = null, Cedar.CommandType? commandType = null);
        void Update(string sql, dynamic param = null, Cedar.CommandType? commandType = null);
        void Delete(string sql, dynamic param = null, Cedar.CommandType? commandType = null);
        IEnumerable<dynamic> Select(string sql, dynamic param = null, Cedar.CommandType? commandType = null);
        IEnumerable<T> Select<T>(string sql, dynamic param = null, Cedar.CommandType? commandType = null);
        

    }
}

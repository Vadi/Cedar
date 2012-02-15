using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    interface ICedar
    {
        /// <summary>
        /// set up the scehma first time, it returns the key to the app
        /// </summary>
        /// <param name="appName"></param>
        /// <returns></returns>
        long SetupSchema(string appName);
        int Execute(long key, string sql, object param);           
       

    }
}

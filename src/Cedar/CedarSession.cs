using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar.Balancer;
namespace Cedar
{
    public class CedarSession: ICedarSession
    {
        //BalancerFactory factory = null;

        //public Cedar()
        //{
        //    factory = new BalancerFactory();
        //}
        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="appName"></param>
        ///// <returns></returns>
        //public long SetupSchema(string appName)
        //{
        //    // get conn string, shard id from cedar db
        //   long shardId = 0;
           
        //    IBalancer balancer = factory.GetBalancer();
           
        //    shardId =  balancer.Run(appName);

        //   Key key =  Utility.GenerateKey(shardId);
           
        //    return key.GetKey();
            
        //}
        
        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="key"></param>
        ///// <param name="sql"></param>
        ///// <param name="param"></param>
        ///// <returns></returns>
        //public int Execute(long key, string sql, object param)
        //{
         
        //    long shardId = Utility.DecomposeKey(key);
        //    // DB calls
         
        //}

        private long _uuid;

        public CedarSession(long uuid)
        {
            _uuid = uuid;
        }
        public void Close()
        {
            throw new NotImplementedException();
        }

        public AppContext GetAppContext()
        {
            throw new NotImplementedException();
        }

        public void Insert(string sql)
        {
            throw new NotImplementedException();
        }

        public void Update(string sql)
        {
            throw new NotImplementedException();
        }

        public void Delete(string sql)
        {
            throw new NotImplementedException();
        }

        public void Select(string sql)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }
    }

    
}

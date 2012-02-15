using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    /// <summary>
    /// This class provides session object to deal with your sharded databases
    /// </summary>
    public class AppContext
    {
        private App _app;

        // 1. I need to have all shards that are configured for this app
        // 2. I need to know how to decode the uuid and understand a shard id out of it 
        // 3. I need to know a shard resolution strategy
        public AppContext(string appName)
        {
            _app = new App();
            _app.ApplicationName = appName;
        }


        public long AddSchema()
        {
            //_app.ApplicationName
            // use utility class 
            // return shard id 
            // and then prepeare key from shardid
            // returns key
            return 0;
        }

        public ICedarSession GetSession(long uuid)
        {
             return null;
        }


    }
}
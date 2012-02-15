using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    /// <summary>
    /// Initiates Cedar Application
    /// </summary>
    /// <remarks>
    /// There should be only one instance for this class across the application lifecycle. This class follows singleton pattern
    /// to provide single instance approach
    /// </remarks>
    public class CedarAppStore
    {
        private readonly Dictionary<string, AppContext> _createdContexts = null;

        public Dictionary<string, AppContext> CreatedContexts
        {
            get { return _createdContexts; }
        }

        private static CedarAppStore _instance = null;

        public CedarAppStore()
        {
            this._createdContexts = new Dictionary<string, AppContext>();
        }

        public static CedarAppStore Instance
        {
            
            get
            {
                if (_instance == null)
                    _instance = new CedarAppStore();

                return _instance;
            }
        }

        public AppContext GetContextOf(string appName)
        {
            // First figure out an app name from this dictionary using this uuid
            AppContext appcontext = null;

            if (!_createdContexts.ContainsKey(appName))
            {
                appcontext = new AppContext(appName);
                _createdContexts[appName] = appcontext;
            }
            else
            {
                appcontext = _createdContexts[appName];
            }

            return appcontext;
        }
        
    }
   
}

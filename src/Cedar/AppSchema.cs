
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    /// <summary>
    /// Keeps the schema information for an application. 
    /// </summary>
    public class AppSchema
    {
	//TODO: public properties should not have underscores in its name. Naming convention issue.

        /// <summary>
        /// Application Id
        /// </summary>
        public int application_id { get; set; }
        /// <summary>
        /// Application name
        /// </summary>
        public string application_name { get; set; }
        /// <summary>
        /// Schema file name
        /// </summary>
        public string schema { get; set; }
    }
}

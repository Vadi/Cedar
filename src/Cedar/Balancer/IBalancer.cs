using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar.Balancer
{
    interface IBalancer
    {
        long Run(string appName);
       
    }
}

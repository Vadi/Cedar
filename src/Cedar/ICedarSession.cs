using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    /// <summary>
    /// Interface for a session
    /// </summary>
    public interface ICedarSession : IDbQueryBehaviour, IDisposable
    {
        void Close(); //Equal to dispose
        
    }

}

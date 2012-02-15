using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{

    public interface IDbQueryBehaviour
    {
        void Insert(string sql);
        void Update(string sql);
        void Delete(string sql);
        void Select(string sql);
    }
}

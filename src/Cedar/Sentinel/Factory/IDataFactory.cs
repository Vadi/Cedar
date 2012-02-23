using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    public class DataFactory
    {
        public IDataReader GetdataReader(FetchType dataFetchMode)
        {
            IDataReader dataReader = null;
            //var dataFetchType = (FetchType)Enum.Parse(typeof(FetchType), dataFetchMode);
            var dataFetchType =  dataFetchMode;

            if (dataFetchType == FetchType.Sql)
            {
                dataReader = new SqlDataReader();
            }
            else if (dataFetchType == FetchType.Xml)
            {
                dataReader = new XmlDataReader();
            }

            return dataReader;
        }
    }

    public enum FetchType { Sql = 1, Xml };
}

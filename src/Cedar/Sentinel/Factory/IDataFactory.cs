using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    public class DataFactory
    {
        public IDataReader GetdataReader(FetchMode dataFetchMode)
        {
            IDataReader dataReader = null;
            //var dataFetchType = (FetchType)Enum.Parse(typeof(FetchType), dataFetchMode);
            var dataFetchType =  dataFetchMode;

            switch (dataFetchType)
            {
                case FetchMode.Sql:
                    dataReader = new SqlDataReader();
                    break;
                case FetchMode.Xml:
                    dataReader = new XmlDataReader();
                    break;
            }

            return dataReader;
        }
        public IDataWriter GetDataWriter(FetchMode fetchMode)
        {
            IDataWriter dataWriter = null;
            switch (fetchMode)
            {
                case FetchMode.Sql:
                    dataWriter = new SqlDataWriter();
                    break;
                case FetchMode.Xml:
                    dataWriter = new XmlDataWriter();
                    break;
            }

            return dataWriter;

        }
    }

    public enum FetchMode { Sql = 1, Xml };
}

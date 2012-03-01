using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Cedar;
namespace CedarTest
{
    [TestClass]
    public class XmlReaderTest
    {
        [TestMethod]
        public void GetShardById()
        {
            IDataReader dataReader = new DataFactory().GetdataReader(FetchMode.Xml);
            Shard shard = dataReader.GetShardById(1000);
            Assert.IsTrue(shard != null );           
        }

        [TestMethod]
        public void GetAllShard()
        {
            IDataReader dataReader = new DataFactory().GetdataReader(FetchMode.Xml);
            List<Shard> shardList  = dataReader.GetAllShard();
            Assert.IsTrue(shardList.Count > 0 );
        }


        [TestMethod]
        public void GetAllShardByAppname()
        {
            IDataReader dataReader = new DataFactory().GetdataReader(FetchMode.Xml);
            List<Shard> shardList = dataReader.GetAllShardByAppname("CxC");
            Assert.IsTrue(shardList.Count > 0);
        }

        [TestMethod]
        public void GetShardStrategyById()
        {
            IDataReader dataReader = new DataFactory().GetdataReader(FetchMode.Xml);
            IList<ShardWile> shardWileList = dataReader.GetShardStrategyById(1000);
            Assert.IsTrue(shardWileList != null);
        }
        
    }


   


}

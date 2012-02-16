using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Cedar;
namespace CedarTest
{
    [TestClass]
    public class CedarAppStoreTests
    {
        [TestMethod]
        public void Test_Whether_AppStore_Returns_Context()
        {
            try
            {
                CedarAppStore.Instance.GetContextOf("APP1");
            }
            catch
            {
                Assert.Fail("APP1 does not added into AppStore");
            }

            // Try to add the same app again, it should not be added into dictionar
            CedarAppStore.Instance.GetContextOf("APP1");


            Assert.IsTrue(CedarAppStore.Instance.CreatedContexts.Count == 1);
            Assert.IsTrue(CedarAppStore.Instance.GetContextOf("APP1") != null);
            Assert.IsInstanceOfType(CedarAppStore.Instance.GetContextOf("APP1"), typeof(AppContext));

        }





        }


    public class IdWorker
    {
        public int dataCenterId { get; set; }
        public int WorkerId { get; set; }
        public long TwePoch { get; set; }
        public int Sequence { get; set; }
        public  int WorkerIdBits { get; set; }
        public int DataCenterIdBits { get; set; }
        public int MaxWorkerId {get; set; }


     

        public void Validate()
        {
            if((WorkerId  > MaxWorkerId) || WorkerId < 0 )
                throw new Exception("");
        }

    }


}

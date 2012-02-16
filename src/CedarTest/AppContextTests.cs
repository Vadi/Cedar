using Cedar;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CedarTest
{
    [TestClass]
    public class AppContextTests : WithUtilitySupport
    {
        [TestMethod]
        public void Test_Whether_AppContext_Returns_Valid_Session()
        {
            // Setup
            var ctx = CedarAppStore.Instance.GetContextOf("APP1");
            var session0 = ctx.GetSession(RandomKey());

            Assert.IsTrue(session0 != null, "Session should be null");

           // var session1 = ctx.GetSession(MeaningfulKey());

        }

    }
}
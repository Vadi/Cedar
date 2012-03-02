using Cedar;
using Cedar.Sharding.ShardStrategy;
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
            
            var ctx = CedarAppStore.Instance.GetContextOf("CXC");
            var session0 = ctx.GetSession(173023710565793792);

            Assert.IsTrue(session0 != null, "Session should be null");
        
            // var session1 = ctx.GetSession(MeaningfulKey());

        }

        [TestMethod]
        public void Test_SetupSchema()
        {
            var ctx = CedarAppStore.Instance.GetContextOf("CXC");
            var uuid = ctx.SetupSchema(new ShardStartegyData() { StrategyType = Strategy.Sequential });

            Assert.AreEqual(uuid>0,true,"Unique id is greater than zero");

        }
        [TestMethod]
        public void Test_add_ShardStrategy()
        {

            long shardId = 1001;
            int totaCount = 0;
            int maxCount = 5;

            var shardStrategy = new ShardStrategyRepository();
            shardStrategy.AddShardStrategy(shardId ,totaCount ,maxCount );
        }

        [TestMethod]
        public void Test_Update_ShardStrategy()
        {

            long shardId = 1000;
        
            var shardStrategy = new ShardStrategyRepository();
            shardStrategy.UpdateShardStrategy(shardId);
        }
       
        [TestMethod]
        public void GetShardById_Test()
        {

            var shardId = 1000;
            var shardRep = new ShardStrategyRepository();
            var shardWile = shardRep.GetShardStrategyById(1000);

            Assert.AreEqual(1,shardWile.Count,"Shard count equal to 1 fro CXC");
            Assert.AreEqual(5,shardWile[0].TotalCount,"Total count of Shardwile updated to 5");
           
        }
        [TestMethod]
        public void Test_SetupSchemaOnMySql()
        {
            var ctx = CedarAppStore.Instance.GetContextOf("IGD");
            int i = 0;
            while (i < 200)
            {
                var uuid = ctx.SetupSchema(new ShardStartegyData() { StrategyType = Strategy.Sequential });
                Assert.AreEqual(uuid > 0, true, "Unique id is greater than zero");
                i++;
            }
            
        }

        [TestMethod]
        public void Test_SetupSchemaForCustomStartegy()
        {
            var ctx = CedarAppStore.Instance.GetContextOf("IGD");
            var strtgy = new RegionalStartegy();
            ctx.ShardStrategy = new RegionalStartegy();
            var uuid = ctx.SetupSchema(new ShardStartegyData() { StrategyType = Strategy.Regional,Region = "Prakash"});

            var worker = new IdWorker(1004);
            var uniqueId = worker.DecomposeKey(uuid);

            Assert.AreEqual(1004 == uniqueId, true, "shard id is not as expected");
         
        }
    }
    
}
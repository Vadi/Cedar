using Cedar;
using Cedar.Sharding.ShardStrategy;
using Cedar.Sharding.ShardStrategy.ShardSelection;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace CedarTest
{
    
    
    /// <summary>
    ///This is a test class for ShardSelectionStrategyTest and is intended
    ///to contain all ShardSelectionStrategyTest Unit Tests
    ///</summary>
    [TestClass()]
    public class ShardSelectionStrategyTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for SelectShardIdForExistingObject
        ///</summary>
        [TestMethod()]
        public void SelectShardIdForExistingObjectTest()
        {
            

            ShardSelectionStrategy target = new ShardSelectionStrategy(); // TODO: Initialize to an appropriate value
            string appName = "CXC";
            AppContext context = CedarAppStore.Instance.GetContextOf(appName);
            object obj = null; // TODO: Initialize to an appropriate value
            long expected = 0; // TODO: Initialize to an appropriate value
            long actual=0;
            actual = target.SelectShardIdForExistingObject(new ShardStartegyData() { StrategyType = Strategy.Sequential });
            Assert.AreEqual(expected, actual);
            
        }
    }
}
 
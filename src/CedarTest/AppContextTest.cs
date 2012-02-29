﻿using Cedar;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Cedar.Sharding.ShardStrategy;

namespace CedarTest
{
    
    
    /// <summary>
    ///This is a test class for AppContextTest and is intended
    ///to contain all AppContextTest Unit Tests
    ///</summary>
    [TestClass()]
    public class AppContextTest
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
        ///A test for ShardStrategy
        ///</summary>
        [TestMethod()]
        public void Test_Whether_ShardStrategy_Is_Not_Null()
        {
            string appName = "CXC";
            AppContext target = new AppContext(appName); 
            Assert.IsNotNull(target.ShardStrategy,"Is not null");
           
        }
    }
}

using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Cedar;
using Cedar.Sharding.ShardStrategy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CedarTest
{
    /// <summary>
    /// Summary description for IntegratedTests
    /// </summary>
    [TestClass]
    public class IntegratedTests
    {
        public IntegratedTests()
        {
            //
            // TODO: Add constructor logic here
            //
        }

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
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void IntegratedTest()
        {
            var listUUIDs = new List<long>();
            var ctx = CedarAppStore.Instance.GetContextOf("IGD");
            int i = 0;
            while (i < 550)
            {
                var uuid = ctx.SetupSchema(new ShardStartegyData() { StrategyType = Strategy.Sequential });

                Assert.AreEqual(uuid > 0, true, "Unique id is greater than zero");
                listUUIDs.Add(uuid);
                i++;
            }
            foreach (var uuid in listUUIDs)
            {
                using (var cedarSession = ctx.GetSession(uuid))
                {

                    Assert.AreNotEqual(null, "Cedar session is not null, cedar connection opened");

                    var ctr =
                        cedarSession.Insert(
                            "insert into employee_" + uuid +
                            " (uuid,first_name,last_name,address) values (@id,@FirstName,@LastName,@Address)", new[]
                                                                                                          {
                                                                                                              new
                                                                                                                  {
                                                                                                                      id= uuid,
                                                                                                                      FirstName
                                                                                                                  =
                                                                                                                  "Tarun",
                                                                                                                      LastName
                                                                                                                  =
                                                                                                                  "Kumar",
                                                                                                                      Address
                                                                                                                  =
                                                                                                                  "C-25 Noida"
                                                                                                                  },
                                                                                                              new
                                                                                                                  {
                                                                                                                       id= uuid,
                                                                                                                      FirstName
                                                                                                                  =
                                                                                                                  "Parkash",
                                                                                                                      LastName
                                                                                                                  =
                                                                                                                  "Bhatt",
                                                                                                                      Address
                                                                                                                  =
                                                                                                                  "C-25 Noida"
                                                                                                                  },
                                                                                                              new
                                                                                                                  {
                                                                                                                       id= uuid,
                                                                                                                      FirstName
                                                                                                                  =
                                                                                                                  "Hemant",
                                                                                                                      LastName
                                                                                                                  =
                                                                                                                  "Kumar",
                                                                                                                      Address
                                                                                                                  =
                                                                                                                  "C-25 Noida"
                                                                                                                  },
                                                                                                              new
                                                                                                                  {
                                                                                                                       id= uuid,
                                                                                                                      FirstName
                                                                                                                  =
                                                                                                                  "Gurpreet",
                                                                                                                      LastName
                                                                                                                  =
                                                                                                                  "Kaur",
                                                                                                                      Address
                                                                                                                  =
                                                                                                                  "C-25 Noida"
                                                                                                                  },
                                                                                                          },
                            Cedar.CommandType.Query);
                    Assert.AreEqual(4, ctr, "4 rows inserted");

                    
                    Assert.AreNotEqual(null, "Cedar session is not null, cedar connection opened");

                    var res = cedarSession.Select("select * from employee_" + uuid, null, Cedar.CommandType.Query);
                    Assert.AreEqual(4, res.Count(), "4 Rows selected");


                    res = cedarSession.Select("select * from employee_" + uuid + " where first_name=@FirstName", new { FirstName = "Gurpreet" }, Cedar.CommandType.Query);
                    Assert.AreEqual(1, res.Count(), "1 Rows selected");
                    
                    cedarSession.Close();
                }
            }
        }
    }
}

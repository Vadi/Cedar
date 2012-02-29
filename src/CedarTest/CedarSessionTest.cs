using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cedar;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CedarTest
{
    [TestClass]
    public class CedarSessionTest
    {
        [TestMethod]
        public void Whether_Cedardb_SqlConnection_Opened()
        {
            var cedarSession = new CedarSession(174103530611572736);

            Assert.AreNotEqual(null,"Cedar session is not null, cedar connection opened");

            cedarSession.Close();
        }
        [TestMethod]
        public void Whether_Cedardb_Execute_Query()
        {
            var uuid = 174103530611572736;
            using (var cedarSession = new CedarSession(uuid))
            {

                Assert.AreNotEqual(null, "Cedar session is not null, cedar connection opened");

                var ctr =
                    cedarSession.Insert(
                        "insert into employee_" + uuid +
                        " (first_name,last_name,address) values (@FirstName,@LastName,@Address)", new[]
                                                                                                      {
                                                                                                          new
                                                                                                              {
                                                                                                                  FirstName
                                                                                                              = "Tarun",
                                                                                                                  LastName
                                                                                                              = "Kumar",
                                                                                                                  Address
                                                                                                              =
                                                                                                              "C-25 Noida"
                                                                                                              },
                                                                                                          new
                                                                                                              {
                                                                                                                  FirstName
                                                                                                              =
                                                                                                              "Parkash",
                                                                                                                  LastName
                                                                                                              = "Bhatt",
                                                                                                                  Address
                                                                                                              =
                                                                                                              "C-25 Noida"
                                                                                                              },
                                                                                                          new
                                                                                                              {
                                                                                                                  FirstName
                                                                                                              = "Hemant",
                                                                                                                  LastName
                                                                                                              = "Kumar",
                                                                                                                  Address
                                                                                                              =
                                                                                                              "C-25 Noida"
                                                                                                              },
                                                                                                          new
                                                                                                              {
                                                                                                                  FirstName
                                                                                                              =
                                                                                                              "Gurpreet",
                                                                                                                  LastName
                                                                                                              = "Kaur",
                                                                                                                  Address
                                                                                                              =
                                                                                                              "C-25 Noida"
                                                                                                              },
                                                                                                      },
                        Cedar.CommandType.Query);
                Assert.AreEqual(4, ctr, "4 rows inserted");

                cedarSession.Close();
            }
        }
        [TestMethod]
        public void Whether_Ceder_Select_Query_Work()
        {
            var uuid = 174103530611572736;
            var cedarSession = new CedarSession(uuid );
            Assert.AreNotEqual(null, "Cedar session is not null, cedar connection opened");

            var ctr = cedarSession.Select("select * from employee_"+uuid, null, Cedar.CommandType.Query);
            Assert.AreEqual(4, ctr.Count(), "4 Rows selected");


            ctr = cedarSession.Select("select * from employee_"+uuid+" where first_name=@FirstName", new { FirstName = "Tarun" }, Cedar.CommandType.Query);
            Assert.AreEqual(1, ctr.Count(), "1 Rows selected");
            cedarSession.Close();
        }

        [TestMethod]
        public void Whether_Ceder_Update_Query_Work()
        {
            var uuid = 174103530611572736;
            var cedarSession = new CedarSession(uuid );
            Assert.AreNotEqual(null, "Cedar session is not null, cedar connection opened");

            var ctr = cedarSession.Select("select * from employee_"+uuid, null, Cedar.CommandType.Query);
            Assert.AreEqual(4, ctr.Count(), "4 Rows selected");

            var address = "C-25 New Delhi";
            cedarSession.Update("update employee_" + uuid + " set address=@Address where first_name=@FirstName", new { FirstName = "Prakash", Address = address }, Cedar.CommandType.Query);
           
            ctr = cedarSession.Select("select address from employee__" + uuid + " where first_name=@FirstName", new { FirstName = "Prakash" }, Cedar.CommandType.Query);
            Assert.AreEqual(address,ctr, "Changed adress updated");
            cedarSession.Close();
        }
    }
}

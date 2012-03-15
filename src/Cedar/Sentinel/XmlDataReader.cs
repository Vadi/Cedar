using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace Cedar
{
    class XmlDataReader : IDataReader
    {
        public List<Shard> GetAllShardByAppname(string appName)
        {
            XDocument xdoc = XDocument.Load(@"D:/CedarXml.xml");

            //GetAllShardByAppname
            var apps = from app in xdoc.Elements("Apps").Elements("App")
                       where app.Attribute("name").Value == appName
                       select app;

            var shardList = (from shard in apps.Elements("shards").Elements("shard")
                             select
                             new Shard()
                             {
                                 shard_id = long.Parse(shard.Element("ShardId").Value),
                                 application_name = "",
                                 connection_string = shard.Element("ConnectionString").Value
                             }).ToList();


            return shardList;

        }

        public Shard GetShardById(long shardId)
        {
            XDocument xdoc = XDocument.Load(@"D:/CedarXml.xml");

            var shard = (from s in xdoc.Descendants("shard")
                         where (int)s.Element("ShardId") == shardId
                         select
                             new Shard()
                             {
                                 shard_id = long.Parse(s.Element("ShardId").Value),
                                 application_name = "",
                                 connection_string = s.Element("ConnectionString").Value
                             }).FirstOrDefault();

            return shard;
        }

        public List<Shard> GetAllShard()
        {
            XDocument xdoc = XDocument.Load(@"D:/CedarXml.xml");

            var shardlist = (from shard in xdoc.Descendants("shard")
                             select
                                 new Shard()
                                 {
                                     shard_id = long.Parse(shard.Element("ShardId").Value),
                                     application_name = "",
                                     connection_string = shard.Element("ConnectionString").Value
                                 }).ToList();



            return shardlist;
        }

        public AppSchema GetAppSchema(long shardId)
        {
            throw new NotImplementedException();
        }

        public void SetupSchema(long shardId, long uuid)
        {
            var app = new App();
            var shard = GetShardById(shardId);

            var connectionString = shard.connection_string;

            var appSchema = GetAppSchema(shard.application_name);

            app.AppId = uuid;
            app.ApplicationName = shard.application_name;
            app.Shards.Add(shard);

            var cedarSession = new CedarSession(shardId);
            cedarSession.EnableTrasaction = true;
            cedarSession.SetupSchema(appSchema);
            cedarSession.Close();

        }

        public IList<ShardWile> GetShardStrategyById(long shardId)
        {
            XDocument xdoc = XDocument.Load(@"D:/CedarXml.xml");

            var shardwile = (from s in xdoc.Descendants("shard")
                             where (int)s.Element("ShardId") == shardId
                             select
                                 new ShardWile()
                                 {
                                     ShardId = int.Parse(s.Element("ShardId").Value),
                                     TotalCount = int.Parse(s.Element("TotalCount").Value),
                                     MaxCount = int.Parse(s.Element("MaxCount").Value)
                                 }).ToList();


            return shardwile;
        }

        public void UpdateShardWile(long shardId)
        {
            throw new NotImplementedException();
        }

        private AppSchema GetAppSchema(string applicationName)
        {
            XDocument xdoc = XDocument.Load(@"D:/CedarXml.xml");

            //GetAppSchema
            var appSchema = (from app in xdoc.Descendants("App")
                             where app.Attribute("name").Value == applicationName
                             select new AppSchema() { application_name = app.Attribute("name").Value, schema = app.Element("schema").Value }).FirstOrDefault();

            return appSchema;
        }


        public IList<ShardWile> GetShardStrategy()
        {
            throw new NotImplementedException();
        }


        public void UpdateShard(long shardId)
        {
            throw new NotImplementedException();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using FluentLinqToSql;
using System.Collections.ObjectModel;



namespace Cedar.DataManager
{

    
    public interface IMappableEntity<TEntity> where TEntity : class
    {
        void CreateMapping(Mapping<TEntity> mapping);
    }
    


    internal class LinqDataProvider<TEntity> : DataContext where TEntity : class
    {
        public LinqDataProvider(DbConnection connection, Mapping<TEntity> mapping)
            : base(connection, new FluentMappingSource(connection.Database).AddMapping(mapping))
        {
        }

        public Table<TEntity> Model
        {
            get { return GetTable<TEntity>(); }
        }
    }



    public abstract class DataRepository<TEntity> : IMappableEntity<TEntity> , IDisposable where TEntity : class
    {
        protected DataRepository()
        {
            //UNTSQLSERVER, sa, sa 10.50.1617
            //_connection = new SqlConnection("SERVER=RINKU-PC;uid=sa;pwd=std;Initial Catalog=toolspt1;");
            //<add key="public.connection.read" value="SERVER=192.168.1.20;uid=hroy;pwd=h@roy;Initial Catalog=UNTWEB_HR;" />
            _connection = new SqlConnection("SERVER=192.168.1.20;uid=hroy;pwd=h@roy;Initial Catalog=UNTWEB_HR;");

            InitializeDataContext();
        }

        private readonly DbConnection _connection = null;        

        private readonly Mapping<TEntity> _entityMapping = new Mapping<TEntity>();

        public TEntity Create(TEntity entity)
        {
            using (var dataProvider = new LinqDataProvider<TEntity>(_connection, _entityMapping))
            {
                dataProvider.Model.InsertOnSubmit(entity);
                dataProvider.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }

            return entity;
        }

        public void Delete(Expression<Func<TEntity, bool>> lambda)
        {
            using (var dataProvider = new LinqDataProvider<TEntity>(_connection, _entityMapping))
            {
                IEnumerable<TEntity> entitiesToDelete = dataProvider.Model.Where(lambda);
                dataProvider.Model.DeleteAllOnSubmit(entitiesToDelete);
                dataProvider.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
        }

        public void Update(TEntity newentity, TEntity original)
        {
            using (var dataProvider = new LinqDataProvider<TEntity>(_connection, _entityMapping))
            {
                dataProvider.Model.Attach(newentity, original);
                dataProvider.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
        }

        public abstract void CreateMapping(Mapping<TEntity> mapping);

        public IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> lambda)
        {
            IEnumerable<TEntity> val;

            var dataProvider = new LinqDataProvider<TEntity>(_connection, _entityMapping);
            val = dataProvider.Model.Where(lambda);

            return val;
        }

        private void InitializeDataContext()
        {
            CreateMapping(_entityMapping);
        }

        public void Dispose()
        {
            if (_connection != null && _connection.State != ConnectionState.Closed)
                _connection.Close();
        }
    }
  
}

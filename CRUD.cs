using System;
using MySql.Data.MySqlClient;
    
namespace Management
{
    abstract class CRUD
    {
        public abstract void AddData(MySqlConnection conn);

        public abstract void ReadData(MySqlConnection conn);

        public abstract void UpdateData(MySqlConnection conn);

        public abstract void DeleteData(MySqlConnection conn);

    }
}




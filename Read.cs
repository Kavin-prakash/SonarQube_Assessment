using System;
using Management;
using MySql.Data.MySqlClient;

namespace Output{
partial class Crudoperation

{
    public override void ReadData(MySqlConnection conn)
    {
        try
        {
            conn.Open();
            string sql = "Select * from product";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();


            while (rdr.Read())
            {
                Console.WriteLine(rdr[0] + "--" + rdr[1] + "--" + rdr[2] + "--" + rdr[3]);
            }

            rdr.Close();
            conn.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }

        Console.WriteLine("Record Readed successfully");
    }
}

}
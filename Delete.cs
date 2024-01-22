using System;

using Management;
using MySql.Data.MySqlClient;


namespace Output{
partial class Crudoperation
{
    public override void DeleteData(MySqlConnection conn)
    {
        Console.Write("\nEnter the Product_id : ");
        int id = Convert.ToInt32(Console.ReadLine());
        try
        {
            conn.Open();
            string insertQuery = $"delete from product where product_id='{id}'";
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        Console.WriteLine("Record Deleted Successfully");
    }
}


}
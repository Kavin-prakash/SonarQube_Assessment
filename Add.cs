using System;
using Management;
using MySql.Data.MySqlClient;


namespace Output{
    partial class Crudoperation : CRUD
    {
        public override void AddData(MySqlConnection conn)
        {
            Console.WriteLine("Enter the Id of the Product :");
            int id = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the Name of the Product : ");
            string? name = Console.ReadLine();
            Console.WriteLine("Enter the Quantity of the Product :");
            int quantity = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the Price of the Product :");
            int price = Convert.ToInt32(Console.ReadLine());

            try
            {
                conn.Open();
                // Use string interpolation to create SQL statements
                string insertQuery = $"insert into product(product_id,{id},product_name,{name},product_quantity,{quantity},product_price) value('{id}','{name}','{quantity}','{price}')";
                MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            Console.WriteLine("Product Record Added successfully");
        }
    }

}
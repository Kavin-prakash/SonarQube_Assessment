using System;
using MySql.Data.MySqlClient;

namespace Output{
    partial class Crudoperation
    {
        public override void UpdateData(MySqlConnection conn)
        {
            try
            {
                Console.WriteLine("Updating values in the Tables:");
                Console.WriteLine("What do you want to update?");
                Console.WriteLine("1. Product ID");
                Console.WriteLine("2. Product Name");
                Console.WriteLine("3. Product Quantity");
                Console.WriteLine("4. Product Price");
                Console.Write("Enter your choice: ");
                
                string? updateChoice = Console.ReadLine();
                string? updateData = null;

                switch (updateChoice)
                {
                    case "1":
                        updateData = "product_id";
                        Console.Write("Update the ID of the Product: ");
                        break;

                    case "2":
                        updateData = "product_name";
                        Console.Write("Update the Name of the Product: ");
                        break;

                    case "3":
                        updateData = "product_quantity";
                        Console.Write("Update the Quantity of the Product: ");
                        break;

                    case "4":
                        updateData = "product_price";
                        Console.Write("Update the Price of the Product: ");
                        break;

                    default:
                        Console.WriteLine("Invalid choice. Please try again.");
                        return;
                }

                string? updateValue = Console.ReadLine();
                Console.Write("Enter the ID: ");
                int id = Convert.ToInt32(Console.ReadLine());

                conn.Open();
                string updateQuery = $"UPDATE product SET {updateData}=@updateValue WHERE product_id=@id";

                using (MySqlCommand cmd = new MySqlCommand(updateQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@updateValue", updateValue);
                    cmd.Parameters.AddWithValue("@id", id);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("Record updated successfully");
                    }
                    else
                    {
                        Console.WriteLine("No record found for the given ID");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
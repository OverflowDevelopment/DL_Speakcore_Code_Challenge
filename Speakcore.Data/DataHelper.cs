using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Speakcore.Data
{
    public class DataHelper
    {
        private string conn = "Server=localhost\\SQLEXPRESS;Database=Speakcore;Trusted_Connection=True;";

        public bool ValidatePassword(string input)
        {
            DataTable table = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(conn))
            using (SqlCommand cmd = new SqlCommand("usp_ValidatePassword", sqlCon))
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                cmd.Parameters.AddWithValue("@input", input);
                cmd.CommandType = CommandType.StoredProcedure;
                da.Fill(table);
            }

            if (table.Rows.Count > 0)
                return table.Rows[0][0].ToString() == "1";

            return false;
        }

        public void InsertUser(string firstName, string lastName, string state, string email)
        {
            using (SqlConnection sqlCon = new SqlConnection(conn))
            using (SqlCommand cmd = new SqlCommand("usp_InsertUser", sqlCon))
            {
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@State", state);
                cmd.Parameters.AddWithValue("@Email", email);

                cmd.CommandType = CommandType.StoredProcedure;
                sqlCon.Open();
                cmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }
    }
}

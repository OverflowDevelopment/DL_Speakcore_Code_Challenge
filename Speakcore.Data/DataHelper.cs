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

        public DataHelper()
        { 
        
        }

        public bool ValidatePassword(string input)
        {
            using (SqlConnection sqlCon = new SqlConnection(conn))
            {

                SqlCommand cmd = new SqlCommand("usp_ValidatePassword", sqlCon);
                cmd.Parameters.Add("@input", SqlDbType.VarChar).Value = input;
                cmd.CommandType = CommandType.StoredProcedure;


                sqlCon.Open();

                cmd.ExecuteNonQuery();

                sqlCon.Close();
            }

            return true;
        }
    }
}

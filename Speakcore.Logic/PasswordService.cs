using System;
using System.Collections.Generic;
using System.Text;
using Speakcore.Data;

namespace Speakcore.Logic.Services
{
    public static class PasswordService
    {
        public static bool IsValidInput(string input)
        {
            //Pass off INPUT to some sort of stored procedure
            //  SP will just return true/false if the record is found in the table
            DataHelper d = new DataHelper();

            return true;
        }
    }
}

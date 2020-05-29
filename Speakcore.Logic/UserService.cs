using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Speakcore.Data;

namespace Speakcore.Logic
{
    public static class UserService
    {
        public static void InsertUser(string firstName, string lastName, string state, string email)
        {
            DataHelper d = new DataHelper();

            d.InsertUser(firstName, lastName, state, email);
        }
    }
}

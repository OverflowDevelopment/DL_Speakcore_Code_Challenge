using Speakcore.Data;

namespace Speakcore.Logic.Services
{
    public static class UserService
    {
        public static void InsertUser(string firstName, string lastName, string state, string email, bool newsletter)
        {
            DataHelper d = new DataHelper();

            d.InsertUser(firstName, lastName, state, email);
        }
    }
}

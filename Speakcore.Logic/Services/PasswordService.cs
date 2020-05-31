using Speakcore.Data;

namespace Speakcore.Logic.Services
{
    public static class PasswordService
    {
        public static bool IsValidInput(string input)
        {
            DataHelper d = new DataHelper();

            return d.ValidatePassword(input);
        }
    }
}

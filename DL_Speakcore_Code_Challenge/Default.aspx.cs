using Speakcore.Logic.Services;
using System;
using System.Web.UI;

namespace DL_Speakcore_Code_Challenge
{
    public partial class _Default : Page
    {
        bool inputIsValid = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Get input from txt
            string input = txtPassword.Text;

            //Validate item exists in DB
            inputIsValid = PasswordService.IsValidInput(input);

            if (inputIsValid)
            {
                Response.Redirect("Registration");
            }
            else
            { 
                //show error
            }
        }
    }
}
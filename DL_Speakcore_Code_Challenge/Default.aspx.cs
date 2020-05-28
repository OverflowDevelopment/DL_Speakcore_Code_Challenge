using Speakcore_Logic.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DL_Speakcore_Code_Challenge
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Get input from txt
            string input = txtPassword.Text;

            //Validate item exists in DB
            PasswordService.IsValidInput(input);
        }
    }
}
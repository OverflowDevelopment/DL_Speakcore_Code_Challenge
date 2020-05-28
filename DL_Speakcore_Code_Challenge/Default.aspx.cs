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
        bool inputIsValid = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //page is just loading, do nothing
            }
            else
            {
                if (!inputIsValid)
                { 
                    //show error
                }
            }
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
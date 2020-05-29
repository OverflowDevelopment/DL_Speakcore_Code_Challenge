using Speakcore.Logic.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DL_Speakcore_Code_Challenge
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string state = cmbState.Text;
            string email = txtEmail.Text;
            bool newsletter = chkNewsletter.Checked;

            UserService.InsertUser(firstName, lastName, state, email, newsletter);

            Response.Redirect("Complete");
        }
    }
}
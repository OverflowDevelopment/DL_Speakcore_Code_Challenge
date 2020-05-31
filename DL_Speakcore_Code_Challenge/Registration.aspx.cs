using Speakcore.Logic.Services;
using System;
using System.Web.UI;

namespace DL_Speakcore_Code_Challenge
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string firstName = txtFirstName.Text.Trim();
                string lastName = txtLastName.Text.Trim();
                string state = cmbState.SelectedValue;
                string email = txtEmail.Text.Trim();
                bool newsletter = chkNewsletter.Checked;

                UserService.InsertUser(firstName, lastName, state, email, newsletter);
                SendMail();
                Response.Redirect("Complete");
            }
        }

        private void SendMail()
        {
            EmailService.SendConfirmationEmail(txtEmail.Text.Trim(), txtFirstName.Text.Trim());
        }
    }
}
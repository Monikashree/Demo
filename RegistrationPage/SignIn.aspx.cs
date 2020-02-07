using OnlineTrainTicketBooking;
using System;

using System.Web.UI;

namespace OnlineTrainTicketBookingApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignIn_Click(object sender, EventArgs e)
        {     
            UserRepository userRepository = new UserRepository();
            short value = userRepository.VerifyWithDB(txtUsername.Text, txtPassword.Text);
            //if(value<101)
            //    Response.Redirect("SignIn.aspx");
            //ScriptManager.RegisterStartupScript(this, GetType(), "Sign in successfully.", "alertMessage();", true);
            if (value > 100)
            {
                string message = "Sign in successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            else
                Response.Redirect("SignIn.aspx");
        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}
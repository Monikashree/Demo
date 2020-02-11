
using System;
using OnlineTrainTicketBookingApp.BL;



namespace OnlineTrainTicketBookingApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        short value;
        string role;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignIn_Click(object sender, EventArgs e)
        {
            value = PathToDAL.UserDetailVerification(txtUsername.Text, txtPassword.Text);              
            if (value < 100)
            {
                Response.Redirect("SignIn.aspx");
            }
            string script = "window.onload = function(){ alert('" + "Sign in successfully." + "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            role = PathToDAL.FindRoleFromDB(value);
            if(role == "Admin")
            {
                Response.Redirect("TrainDetailsAdmin.aspx");
            }            
        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}
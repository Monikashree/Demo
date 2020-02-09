using System;


namespace OnlineTrainTicketBookingApp
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GoToHome(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        protected void GoToLogin(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
        protected void GoToSignUp(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        protected void GoToTrainDetails(object sender, EventArgs e)
        {
            Response.Redirect("TrainDetails.aspx");
        }

    }
}
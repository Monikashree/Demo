using OnlineTrainTicketBooking;
using System;
using OnlineTrainTicketBookingApp.BL;


namespace OnlineTrainTicketBookingApp
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {            
            User user = new User(txtFirstnameID.Text, txtLastnameID.Text, short.Parse(txtAgeID.Text), rbtSex.SelectedItem.ToString(), txtGmailID.Text, long.Parse(txtPhoneID.Text), txtPasswordID.Text, "User");        
            int row = PathToDAL.StoreDetails(user);            
            if (row <= 1)
            {
                Response.Write("Not Registered Succesfully");
            }         
             
            string script = "window.onload = function(){ alert('" + "Your details have been Registered successfully." + "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Response.Redirect("SignIn.aspx");
        }

        //protected void ServerValidation(object sender, ServerValidateEventArgs args)
        //{
        //    try
        //    {
        //        short data = short.Parse(args.Value);
        //        args.IsValid = (data > 18 && data < 100);
        //    }
        //    catch(Exception msg)
        //    {
        //        args.IsValid = false;
        //    }
        //}
    }
}
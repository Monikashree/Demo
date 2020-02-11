using OnlineTrainTicketBooking;
using OnlineTrainTicketBookingApp.BL;
using OnlineTrainTicketBookingApp.DAL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTrainTicketBookingApp
{
    public partial class TrainDetailsAdmin : System.Web.UI.Page
    {
        TrainRepository trainRepository = new TrainRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Populatedata();
            }
        }
        public void Populatedata()
        {
            DataTable dataTable = PathToDAL.ViewTrainDetails();
            if (dataTable.Rows.Count > 0)
            {
                gdView.DataSource = dataTable;
                gdView.DataBind();
            }
            else
            {
                //string message = "No data Found....";
                string script = "window.onload = function(){ alert('" + "No data Found...." + "')};";
                //script += message;
                //script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }

        }

        protected void gdView_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {

            try
            {
                if (e.CommandName.Equals("Add"))
                {
                    Train train = new Train(Convert.ToInt32((gdView.FooterRow.FindControl("txtNoFooter") as TextBox).Text),
                        (gdView.FooterRow.FindControl("txtNameFooter") as TextBox).Text,
                        (gdView.FooterRow.FindControl("txtSourceFooter") as TextBox).Text,
                        (gdView.FooterRow.FindControl("txtDestinationFooter") as TextBox).Text,
                        Convert.ToDateTime((gdView.FooterRow.FindControl("txtDepartTimeFooter") as TextBox).Text),
                        Convert.ToDateTime((gdView.FooterRow.FindControl("txtArrivalTimeFooter") as TextBox).Text),
                        Convert.ToInt32((gdView.FooterRow.FindControl("txtKMFooter") as TextBox).Text),
                        Convert.ToInt32((gdView.FooterRow.FindControl("txtSeatFooter") as TextBox).Text),
                        Convert.ToInt32((gdView.FooterRow.FindControl("txtCostFooter") as TextBox).Text));
                    int row = PathToDAL.InsertTrainDetails(train);
                    Populatedata();
                    if (row >= 1)
                    {
                        lblSuccessMsg.Text = "New Record Added Successfully...";
                        lblErrorMsg.Text = "";
                    }
                }
            }
            catch (Exception msg)
            {
                lblErrorMsg.Text = "Not Added Succesfully...";
                lblSuccessMsg.Text = "";
            }
        }

        protected void gdView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gdView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Train train = new Train(Convert.ToInt32(gdView.DataKeys[e.RowIndex].Value.ToString()),
                (gdView.Rows[e.RowIndex].FindControl("txtName") as TextBox).Text,
                (gdView.Rows[e.RowIndex].FindControl("txtSource") as TextBox).Text,
                (gdView.Rows[e.RowIndex].FindControl("txtDestination") as TextBox).Text,
                Convert.ToDateTime((gdView.Rows[e.RowIndex].FindControl("txtDepartTime") as TextBox).Text),
                Convert.ToDateTime((gdView.Rows[e.RowIndex].FindControl("txtArrivalTime") as TextBox).Text),
                Convert.ToInt32((gdView.Rows[e.RowIndex].FindControl("txtKM") as TextBox).Text),
                Convert.ToInt32((gdView.Rows[e.RowIndex].FindControl("txtSeat") as TextBox).Text),
                Convert.ToInt32((gdView.Rows[e.RowIndex].FindControl("txtCost") as TextBox).Text));
                int row = PathToDAL.EditTrainDetails(train);
                gdView.EditIndex = -1;
                Populatedata();
                if (row >= 1)
                {
                    lblSuccessMsg.Text = "Record Updated Successfully...";
                    lblErrorMsg.Text = "";
                }
            }
            catch (Exception)
            {
                lblErrorMsg.Text = "Not Updated Succesfully...";
                lblSuccessMsg.Text = "";
            }
        }

        protected void gdView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gdView.EditIndex = e.NewEditIndex;
            Populatedata();
        }

        protected void gdView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gdView.EditIndex = -1;
            Populatedata();
        }

        protected void gdView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(gdView.DataKeys[e.RowIndex].Value.ToString());
                int row = PathToDAL.RemoveTrainDetails(id);
                //gdView.EditIndex = -1;
                Populatedata();
                if (row >= 1)
                {
                    lblSuccessMsg.Text = "Record Deleted Successfully...";
                    lblErrorMsg.Text = "";
                }
            }
            catch (Exception)
            {
                lblErrorMsg.Text = "Not Deleted Succesfully...";
                lblSuccessMsg.Text = "";
            }
        }
    }
}
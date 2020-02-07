//using System;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace RegistrationPage
//{
//    public partial class GridView : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!Page.IsPostBack)
//            {
//                Refreshdata();
//            }
//        }
//        public void Refreshdata()
//        {
//            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
//            SqlCommand cmd = new SqlCommand("select * from tbl_data", con);
//            SqlDataAdapter sda = new SqlDataAdapter(cmd);
//            DataTable dt = new DataTable();
//            sda.Fill(dt);
//            gdView.DataSource = dt;
//            gdView.DataBind();


//        }

//        protected void GridViewRowDeleting(object sender, GridViewDeleteEventArgs e)
//        {
//            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
//            int id = Convert.ToInt16(gdView.DataKeys[e.RowIndex].Values["id"].ToString());
//            con.Open();
//            SqlCommand cmd = new SqlCommand("delete from tbl_data where id =@id", con);
//            cmd.Parameters.AddWithValue("id", id);
//            int i = cmd.ExecuteNonQuery();
//            con.Close();
//            refreshdata();
//        }

//        protected void GridViewRowEditing(object sender, GridViewEditEventArgs e)
//        {
//            gdView.EditIndex = e.NewEditIndex;
//            refreshdata();
//        }

//        protected void GridViewRowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
//        {
//            gdView1.EditIndex = -1;
//            refreshdata();
//        }

//        protected void GridViewRowUpdating(object sender, GridViewUpdateEventArgs e)
//        {
//            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

//            TextBox txtname = gdView.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
//            TextBox txtcity = gdView.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
//            int id = Convert.ToInt16(gdView.DataKeys[e.RowIndex].Values["id"].ToString());
//            con.Open();
//            SqlCommand cmd = new SqlCommand("sp_updatedata", con);
//            cmd.CommandType = CommandType.StoredProcedure;

//            cmd.Parameters.AddWithValue("name", txtname.Text);
//            cmd.Parameters.AddWithValue("city", txtcity.Text);
//            cmd.Parameters.AddWithValue("id", id);

//            int i = cmd.ExecuteNonQuery();
//            con.Close();
//            gdView.EditIndex = -1;
//            Refreshdata();


//        }
//    }
//}
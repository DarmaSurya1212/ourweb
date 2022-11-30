using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.Admin.EditCampusEventAndAchievemnt
{
    public partial class CampusEvent : System.Web.UI.Page
    {
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

      
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            CampusEventImage.SaveAs(Request.PhysicalApplicationPath + "./Images/" + CampusEventImage.FileName.ToString());
            a = "Images/" + a + CampusEventImage.FileName.ToString();
            CampusEventImage.FileName.ToString();

            string ins = "insert into campusEvent (eventName, eventImage, eventDesc, eventLoc, eventDate, eventBeginTime, eventEndTime ) values('" + txtCampusEvent.Text + "', '" + a.ToString() + "', '" + txteventDesc.Text + "', '" + txtLocation.Text + "', '" + txtEventDate.Text + "',  '" + txtEventBeginTime.Text + "', '" + txtEventEndTime.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            GridView1.DataBind();
            txtCampusEvent.Text = "";
            txteventDesc.Text = "";
            txtEventEndTime.Text = "";
            txtEventDate.Text = "";
            txtEventBeginTime.Text = "";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string ins = "Select * from campusEvent where (eventName like '%' +@eventName + '%' or eventDesc like '%' + @eventDesc + '%')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.Add("@eventName", SqlDbType.NVarChar).Value = txtSearch.Text;
            cmd.Parameters.Add("@eventDesc", SqlDbType.NVarChar).Value = txtSearch.Text;
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "eventName");
            da.Fill(ds, "eventDesc");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            lblNotice.Text = "Data has been selected";
        }
    }
}
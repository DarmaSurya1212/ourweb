using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.Admin.Sports
{
    public partial class AddSportsBook : System.Web.UI.Page
    {
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            sportsImg.SaveAs(Request.PhysicalApplicationPath + "./Images/" + sportsImg.FileName.ToString());
            a = "Images/" + a + sportsImg.FileName.ToString();

            string ins = "insert into sport (sportName, presidentName, sportsDescription, sportPict, phoneNumber) values('" + txtSportsClubName.Text + "', '" + txtName.Text + "', '" + txtSportsDescription.Text + "' , '" + a.ToString() + "', '" + txtPhoneNumber.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            GridView1.DataBind();
            txtName.Text = "";
            txtSportsClubName.Text = "";
            txtPhoneNumber.Text = "";
            txtSearch.Text = "";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string ins = "Select * from sport where (sportName like '%' +@sportName + '%' or sportsDescription like '%' + @sportsDescription + '%')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.Add("@sportName", SqlDbType.NVarChar).Value = txtSearch.Text;
            cmd.Parameters.Add("@sportsDescription", SqlDbType.NVarChar).Value = txtSearch.Text;
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "sportName");
            da.Fill(ds, "sportsDescription");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            lblNotice.Text = "Data has been selected";
        }
    }
}
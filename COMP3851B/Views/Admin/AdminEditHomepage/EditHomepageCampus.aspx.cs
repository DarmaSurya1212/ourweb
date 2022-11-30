
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.Admin.AdminEditHomepage
{
    public partial class EditHomepageCampus : System.Web.UI.Page
    {
        string a;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-V9KLQ4QE\\SQLEXPRESS01;Initial Catalog=FunUniversity;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            CampusImg.SaveAs(Request.PhysicalApplicationPath + "./Images/" + CampusImg.FileName.ToString());
            a = "Images/" + a + CampusImg.FileName.ToString();

            string ins = "insert into campus (campusLoc, campusImg) values('" + txtCampusName.Text + "', '" + a.ToString() + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            GridView1.DataBind();
            txtCampusName.Text = "";
            txtSearch.Text = "";

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string ins = "Select * from Campus where (campusLoc like '%' +@campusLoc + '%')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.Add("@campusLoc", SqlDbType.NVarChar).Value = txtSearch.Text;
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "campusLoc");
            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            lblNotice.Text = "Data has been selected";
        }
        void loadRecord()
        {
            SqlCommand comm = new SqlCommand("Select Top 3 from Campus", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    }

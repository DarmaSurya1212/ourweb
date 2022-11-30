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

namespace COMP3851B.Views.Admin.EditCampusEventAndAchievemnt
{
    public partial class CampusAchievement : System.Web.UI.Page
    {
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(CampusImg.PostedFile.FileName);
            string contentType = CampusImg.PostedFile.ContentType;
            using (Stream fs = CampusImg.PostedFile.InputStream)
            {
                string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(DbConnect);
                CampusImg.SaveAs(Request.PhysicalApplicationPath + "./Images/" + CampusImg.FileName.ToString());
                a = "Images/" + a + CampusImg.FileName.ToString();

                string ins = "insert into campusAchievment (acheivName,  acheivImage, timeEarned) values('" + txtCampusName.Text + "',  '" + a.ToString() + "',  '" + txtDate.Text + "')";
                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                txtCampusName.Text = ""; txtDate.Text = "";
                //LoadRecord();
                GridView1.DataBind();
                txtCampusName.Text = "";
                txtDate.Text = "";
            }
        }

        void LoadRecord()
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            SqlCommand comm = new SqlCommand("select * from campusAchievement", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            //GridView1.DataSource = dt;
            GridView1.DataBind();
        }

   

        protected void btnSearch2_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string ins = "Select * from campusAchievment where (acheivName like '%' +@acheivName + '%' )";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.Add("@acheivName", SqlDbType.NVarChar).Value = txtSearch.Text;
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "acheivName");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            lblNotice.Text = "Data has been selected";
        }
    }
}
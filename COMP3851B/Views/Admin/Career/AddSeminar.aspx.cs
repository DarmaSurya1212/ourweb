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

namespace COMP3851B.Views.Admin.Career
{
    public partial class AddSeminar : System.Web.UI.Page
    {
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
                    FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./Images/" + FileUpload1.FileName.ToString());
                    a = "Images/" + a + FileUpload1.FileName.ToString();
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "Insert into seminar values('" + FileUpload1.FileName + "','" + TextBox8.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted');", true);
                            GridView1.DataBind();
                            TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = ""; TextBox4.Text = "";
                            TextBox5.Text = ""; TextBox6.Text = ""; TextBox7.Text = ""; TextBox8.Text = "";
                        }
                    }
                }
            }
            //con.Open();
            //SqlCommand comm = new SqlCommand("Insert into seminar values('" + FileUpload1.FileName + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
            //comm.ExecuteNonQuery();
            //con.Close();
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string ins = "Select * from seminar where (seminarName like '%' +@seminarName + '%' or seminarLoc like '%' + @seminarLoc + '%')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.Add("@seminarName", SqlDbType.NVarChar).Value = txtSearch.Text;
            cmd.Parameters.Add("@seminarLoc", SqlDbType.NVarChar).Value = txtSearch.Text;
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "seminarName");
            da.Fill(ds, "seminarLoc");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            lblNotice.Text = "Data has been selected";

        }
    }

       /* void LoadRecord()
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            SqlCommand comm = new SqlCommand("select * from seminar", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }*/
    }
//}
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

namespace COMP3851B.Views.Admin.FoodTour
{
    public partial class AddFood : System.Web.UI.Page
    {
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (!IsPostBack)
            //{
              //  LoadRecord();
            //}
           
           
        }

        void LoadRecord()
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            SqlCommand comm = new SqlCommand("select * from localFood", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string contentType = FileUpload2.PostedFile.ContentType;
            using (Stream fs = FileUpload2.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
                    FileUpload2.SaveAs(Request.PhysicalApplicationPath + "./Images/" + FileUpload2.FileName.ToString());
                    a = "Images/" + a + FileUpload2.FileName.ToString();
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "Insert into localFood values('" + TextBox9.Text + "','" + FileUpload2.FileName + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox10.Text + "')";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted');", true);
                            GridView2.DataBind();
                            TextBox10.Text = ""; TextBox11.Text = "";
                            TextBox12.Text = ""; TextBox13.Text = ""; TextBox7.Text = ""; TextBox8.Text = "";
                            TextBox9.Text = "";
                        }
                    }
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string ins = "Select * from localFood where (foodName like '%' +@foodName + '%')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.Add("@foodName", SqlDbType.NVarChar).Value = txtSearch.Text;
         
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "foodName");
            

            GridView2.DataSourceID = null;
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
            lblNotice.Text = "Data has been selected";
        }
    }
}
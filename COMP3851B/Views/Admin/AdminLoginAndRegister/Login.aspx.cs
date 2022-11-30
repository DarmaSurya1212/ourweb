using COMP3851B.BBL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.Admin.AdminLoginAndRegister
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-V9KLQ4QE\\SQLEXPRESS01;Initial Catalog=FunUniversity;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string check = "Select count(*) from [adminData] where adminEmail = '" + txtEmail.Text + "' and adminPassword = '" + txtPass.Text + "' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("../AdminHome/AdminHome.aspx");
            }
            else
            {
                lblErrorLogin.ForeColor = System.Drawing.Color.Red;
                lblErrorLogin.Text = "your Username or password is invalid";
            }
        }
    
        }
    }

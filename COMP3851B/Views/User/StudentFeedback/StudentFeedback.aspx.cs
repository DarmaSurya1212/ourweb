using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.User.StudentFeedback
{
  
    public partial class StudentFeedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-V9KLQ4QE\\SQLEXPRESS01;Initial Catalog=FunUniversity;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
            

        

        protected void btnSend_Click1(object sender, EventArgs e)
        {
            //inserting the register data to database
            string ins = "insert into [studentFeedback](studentID, studentName, studentFeedback) values ('" + txtstdID.Text + "', '" + txtName.Text + "', '" + txtFeedback.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
           
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            txtFeedback.Text = "";
            txtName.Text = "";
            txtstdID.Text = "";
        }
    }
}
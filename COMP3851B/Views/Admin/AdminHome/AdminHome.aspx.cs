using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.Admin.AdminHome
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            countCampus();
            countQuote();
            countAdmin();
            countGuideCategory();
            countFacility();
            countAchievement();
            countEvent();
            countSportsBook();
            countFeedback();
            countFood();
           countGuide();
            countSeminar();
        }

        void countCampus()
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (campusID) FROM Campus";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblCampus.Text = rows_Count.ToString();
        }

        void countQuote()
        {
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (quoteID) FROM quotes";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblQuote.Text = rows_Count.ToString();
        }
        void countAdmin()
        {
                //Count admin data
                string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(DbConnect);
                string count = "SELECT Count (adminID) FROM adminData";
                
                    con.Open();
                    SqlCommand cmd = new SqlCommand(count, con);
                    Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
                    cmd.Dispose();
                    con.Close();
                lblAdminCount.Text = rows_Count.ToString();
                }

        void countFeedback()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (feedbackID) FROM studentFeedback";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblFeedback.Text = rows_Count.ToString();
        }

        void countSportsBook()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (sportID) FROM Sport";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblSportsBook.Text = rows_Count.ToString();
        }

        void countEvent()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (eventID) FROM campusEvent";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblEvent.Text = rows_Count.ToString();
        }

        void countAchievement()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (achievID) FROM campusAchievment";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblAchievement.Text = rows_Count.ToString();
        }

        void countGuide()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (gdeID) FROM tutorialGuide";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
           lblGuide.Text = rows_Count.ToString();
        }

        void countGuideCategory()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (gdeCatID) FROM tutorialGuideCategory";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblGuideCategoryRecord.Text = rows_Count.ToString();
        }

        void countFacility()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (facilityID) FROM campusFacility";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblFacilityRecord.Text = rows_Count.ToString();
        }

        


        void countFood()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (foodID) FROM localFood";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblFoodCount.Text = rows_Count.ToString();
        }

        void countSeminar()
        {
            //Count admin data
            string DbConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(DbConnect);
            string count = "SELECT Count (seminarID) FROM seminar";

            con.Open();
            SqlCommand cmd = new SqlCommand(count, con);
            Int32 rows_Count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblSeminarCount.Text = rows_Count.ToString();
        }












    }
}

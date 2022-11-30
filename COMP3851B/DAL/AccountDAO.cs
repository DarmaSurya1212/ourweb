using COMP3851B.BBL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace COMP3851B.DAL
{
    public class AccountDAO
    {
        //Account CRUD + Search
        public int InsertAccount(Account acnt)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(DBConnect);

            string sqlstmt = "IF NOT EXISTS(SELECT 1 FROM adminData WHERE AdminEmail = @paraEmail AND AdminPassword = @paraPass AND AdminName = @paraName) BEGIN INSERT INTO adminData(AdminEmail, AdminPassword, AdminName) VALUES (@paraEmail, @paraPass, @paraName) END ELSE BEGIN RETURN END";

            int result = 0; //execute query
            SqlCommand sqlCmd = new SqlCommand(sqlstmt, conn);
            sqlCmd.Parameters.AddWithValue("@paraEmail", acnt.adminEmail);
            sqlCmd.Parameters.AddWithValue("@paraPass", acnt.adminPass);
            sqlCmd.Parameters.AddWithValue("@paraName", acnt.adminName);

            conn.Open();
            result = sqlCmd.ExecuteNonQuery();

            conn.Close();

            return result;
        }

        public List<Account> GetAllAccount()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(DBConnect);

            string sqlstmt = "SELECT AdminEmail, AdminPassword, AdminName FROM adminData";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, conn);

            DataSet ds = new DataSet();
            da.Fill(ds);

            List<Account> acnt = new List<Account>();

            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 0)
            {
                acnt = null;
            }
            else
            {
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    int id = Convert.ToInt32(row["adminID"]);
                    string email = row["adminEmail"].ToString();
                    string pass = row["adminPassword"].ToString();
                    string name = row["adminName"].ToString();

                    Account accnt = new Account(id, email, pass, name);
                    acnt.Add(accnt);
                }
            }
            return acnt;

        }
        public Account GetOneAccount(string email)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(DBConnect);

            string sqlstmt = "SELECT  adminPassword, adminName where adminEmail = @paraemail";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, conn);

            da.SelectCommand.Parameters.AddWithValue("@paraemail", email);

            DataSet ds = new DataSet();
            da.Fill(ds);

            Account acnt = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 1)
            {
                DataRow row = ds.Tables[0].Rows[0];
              
                string adminemail = Convert.ToString(row["adminEmail"]);
                string pass = Convert.ToString(row["adminPassword"]);
                string name = Convert.ToString(row["adminName"]);

                acnt = new Account(adminemail, pass, name);
            }
            return acnt;
        }
        public int UpdateAccount(Account acnt, int id)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(DBConnect);

            string sqlstmt = "UPDATE adminData SET adminEmail = @paraemail, adminPassword = @parapass, adminName = @paraname WHERE adminID = @paraid";
            int result = 0;
            SqlCommand sqlcmd = new SqlCommand(sqlstmt, conn);
            sqlcmd.Parameters.AddWithValue("@paraemail", acnt.adminEmail);
            sqlcmd.Parameters.AddWithValue("@parapass", acnt.adminPass);
            sqlcmd.Parameters.AddWithValue("@paraname", acnt.adminName);
            sqlcmd.Parameters.AddWithValue("@paraid", acnt.adminID);

            conn.Open();
            result = sqlcmd.ExecuteNonQuery();

            conn.Close();

            return result;

        }

        public int DeleteAccount(int adminid)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(DBConnect);

            string sqlstmt = "DELET adminData where adminID = @paraid";

            int result = 0;

            SqlCommand sqlCmd = new SqlCommand(sqlstmt, conn);
            sqlCmd.Parameters.AddWithValue("@paraid", adminid);

            conn.Open();
            result = sqlCmd.ExecuteNonQuery();

            conn.Close();

            return result;

        }
    }
}
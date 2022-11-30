using COMP3851B.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP3851B.BBL
{
    public class Account
    {
        //Account Properties
        public int adminID { get; set; }
        public string adminEmail { get; set; }
        public string adminPass { get; set; }
        public string adminName { get; set; }

        public Account()
        {

        }
        public Account (string email)
        {
            this.adminEmail = email;
        }
        public Account (int id, string email)
        {
            this.adminID = id;
            this.adminEmail = email;
        }

        public Account(string email, string pass, string name)
        {
            this.adminEmail = email;
            this.adminPass = pass;
            this.adminName = name;
        }

        public Account(int id, string email, string pass, string name)
        {
            this.adminID = id;
            this.adminEmail = email;
            this.adminPass = pass;
            this.adminName = name;
        }

        //methods
        //account methods
        public int AddAccount()
        {
            AccountDAO dao = new AccountDAO();
            return (dao.InsertAccount(this));
        }

        public List <Account> GetAllAccount()
        {
            AccountDAO dao = new AccountDAO();
            return dao.GetAllAccount();
        }

        public Account GetOneAccount(string email)
        {
            AccountDAO dao = new AccountDAO();
            return dao.GetOneAccount(email);
        }

        public int UpdateAccount(int id)
        {
            AccountDAO dao = new AccountDAO();
            return dao.UpdateAccount(this, id);
        }

        public int DeleteGuide(int id)
        {
            AccountDAO dao = new AccountDAO();
            return dao.DeleteAccount(id);
        }
    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace COMP3851B.BBL
{
    public class userHome
    {
        public DbSet <quotes> quotes  { get; set; }
        public DbSet<campus> campus { get; set; }

        public DbSet<feedback> feedback { get; set; }


    }

    public class quotes
    {
        public int quoteID { get; set; }
        public string quote { get; set; }
        public string quotePerson { get; set; }
    }
    public class campus
    {
        public int campusID { get; set; }
        public string campusLoc { get; set; }
        public string campusImg { get; set; }
    }

    public class feedback
    {
        public int feedbackID { get; set; }
        public int studentID { get; set; }
        public string studentName  { get; set; }
        public  string studentFeedback { get; set; }
    }
}
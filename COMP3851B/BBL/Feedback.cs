using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP3851B.BBL
{
    public class Feedback
    {
        public int feedBackID { get; set; }
        public int stdID { get; set; }
        public string stdName { get; set; }
        public string stdFeedback { get; set; }
         public Feedback()
         {

         }  

        public Feedback(int feedbackid, int stdid, string stdname, string stdfeedback)
        {
            this.feedBackID = feedbackid;
            this.stdID = stdid;
            this.stdName = stdname;
            this.stdFeedback = stdFeedback;
        }

        public Feedback(int stdid, string stdname, string stdfeedback)
        {
            this.stdID = stdid;
            this.stdName = stdname;
            this.stdFeedback = stdfeedback;
        }

        public Feedback(int stdid, int feedbackid, string stdfeedback)
        {
            this.stdID = stdid;
            this.feedBackID = feedbackid;
            this.stdFeedback = stdfeedback;
        }
    
    
    }

   
}
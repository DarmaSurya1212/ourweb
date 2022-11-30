using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP3851B.BBL
{
    public class Feedback
    {
        public int fID { get; set; }
        public int sID { get; set; }
        public string sName { get; set; }
        public string sFeedback { get; set; }

        public Feedback()
        {

        }
        public Feedback(int fid, int sid, string sname, string sfeedback)
        {
            this.fID = fid;
            this.sID = sid;
            this.sName = sname;
            this.sFeedback = sfeedback;
        }
        public Feedback(string sname, string sfeedback)
        {
            this.sName = sname;
            this.sFeedback = sfeedback;
        }
        public Feedback(int fid, string sname, string sfeedback)
        {
            this.fID = fid;
            this.sName = sname;
            this.sFeedback = sfeedback;
        }

       
    }
}
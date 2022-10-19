using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP3851B.BBL
{
    public class Campus
    {
        public int campusID { get; set; }
        public  string campusLoc{ get; set; }
        public string campusImage { get; set; }
  
        public Campus()
        {

        }

        public Campus(int campusid, string campusloc, string campusimage)
        {
            this.campusID = campusid;
            this.campusLoc = campusloc;
            this.campusImage = campusimage;
        }

        public Campus(string campusloc, string campusimage)
        {
            this.campusLoc = campusloc;
            this.campusImage = campusimage;
        }
            
            
            }
    
}
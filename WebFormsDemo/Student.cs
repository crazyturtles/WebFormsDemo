using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsDemo
{
    public class Student
    {
        public int StudentID { get; set; }
        public string Name { get; set; }
        public double Credits { get; set; }
        public string EmergencyPhoneNumber { get; set; }
        public Student()
        {
         
        }
        public Student(int studentid,
                        string name,
                        double credits,
                        string emergencyphonenumber)
        {
            StudentID = studentid;
            Name = name;
            Credits = credits;
            EmergencyPhoneNumber = emergencyphonenumber;
        }
    }
}
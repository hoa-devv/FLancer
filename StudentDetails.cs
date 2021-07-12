using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297
{
    class StudentDetails
    {
        string _studName = "James";
        int rollNumber = 20;

        static void Main(string[]args)
        {
            StudentDetails objStudents = new StudentDetails();
            Console.WriteLine("Student Name :" + objStudents._studName);
            objStudents._studName);
            Console.WriteLine("Roll Number:" + objStudents.rollNumber);
        }
    }
}

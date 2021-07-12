using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297
{
    class Students
    {
        string _studName = "Jame Anderson";
        int _studAge = 27;
        
        void Display()
        {
            Console.WriteLine("Student Name : " + _studName);
            Console.WriteLine("Student Age: " + _studAge);
        }
        static void Main(string[]args)
        {
            Students objStudents = new Students();
            objStudents.Display();
        }

        
    }
}

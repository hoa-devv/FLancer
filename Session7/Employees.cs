using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session7
{
    class Employees
    {
        int _empID = 1;
        string _empName = "James Anderson";
        int _age = 25;
        public void Display ()
        {
            Console.WriteLine("Employee ID : + _empID");
            Console.WriteLine("Employee Name : " + _empName);

        }
    }
    class Department : Employees
    {
        int _deptID = 501;
        string _deptName = "Sales";
        new void Display()
        {
            base.Display();
            Console.WriteLine("Department ID : " + _deptID);
            Console.WriteLine("Department Name : " + _deptName);
        }
        static void Main (string[]args)
        {
            Department objDepartment = new Department();
            objDepartment.Display();

        }
    }
}

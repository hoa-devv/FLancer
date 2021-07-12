using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session7
{
    class Animal3
    {
        protected string Food;
        protected string Activity;
    }
    class Cat : Animal
    {
        static void Main(String[]args)
        {
            Cat objCat = new Cat();
            objCat.Food = "Mouse";
            objCat.Activity = "laza around";
            Console.WriteLine("The Cat loves to eat" + objCat.Food + ".");
            Console.WriteLine("The Cat loves to" + objCat.Activity + ".");


        }
    }
}

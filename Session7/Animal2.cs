using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session7
{
    class Animal2
    {
        public void Eat() 
            {
                Console.WriteLine("Every animal eats something");
            } 
        public void DoSomething()
        {
            Console.WriteLine("every animal dones something.");
        }
    }
    class Cat : Animal
    {
        static void Nain(String[] args)
        {
            Cat objCat = new Cat();
            objCat.Eat();
            objCat.DoSomething();



        }
    }
}

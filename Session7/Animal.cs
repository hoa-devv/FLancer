using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session7
{
    class Animal
    {
        public void Eat()
        {
            Console.WriteLine("Every animal eats something.");
        }
    }
    
    class Mammal : Animal
    {
       public void Feature()
        {
            Console.WriteLine("Mamma ls give birth to young ones.");
        }
    }
}


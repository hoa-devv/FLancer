using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session7
{
    class Dog : Mammal
    {
        public void Noise()
        {
            Console.WriteLine("Dog Barks.");
        }
        static void Main (string[]args)
        {
            Dog objDog = new Dog();
            objDog.Eat();
            objDog.Feature();
            objDog.Noise();
        }
    }
}

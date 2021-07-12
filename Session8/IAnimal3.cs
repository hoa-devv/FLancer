using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session8
{
    interface IAnimal3
    {
        void Habitat();
    }
    class Dog : IAnimal3
    {
        public void Habitat()
        {
            Console.WriteLine("Can be housed with human beings");
        }
        static void Main(string[]args)
        {
            Dog objDog = new Dog();
            Console.WriteLine(objDog.GetType().Name);
            objDog.Habitat();
        }
    }
}

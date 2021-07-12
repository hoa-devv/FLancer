using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session8
{
     abstract class Animal2
    {
        public void Eat()
        {
            Console.WriteLine("Every animal eats food in order to survive");
        }
        public abstract void Animal2Sound();


    }
    class Lion : Animal2
    {
        public override void Animal2Sound()
        {
            Console.WriteLine("Lion roars");
        }
        static void Main (string[]args)
        {
            Lion objLion = new Lion();
            objLion.Animal2Sound();
            objLion.Eat();
        }
    }
}

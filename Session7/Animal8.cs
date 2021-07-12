using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session7
{
    class Animal8
    {
        public virtual void Eat()
        {
            Console.WriteLine("Every animal eats spomething");

        }
        protected void DoSomething()
        {
            Console.WriteLine("Every animal does somrthing");
        }

    }

    class Cat : Animal8
    {
        //Class Cat overrise Eat() method of class Animal
        public override void Eat()
        {
            Console.WriteLine("Cat loves to eat the mouse ");
        }
        static void Main(String[]args)
        {
            Cat objCat = newCat();
            objCat.Eat();
        }
    }


}

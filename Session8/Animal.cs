using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session8
{
     public abstract class Animal
        // Non - abstract method implementation public void Eat()
    {
        Console.WriteLine ("Every animal eats food in order to survire");
    }
    // Abstract method declaration
    public abstract void AnimalSound();
    public abstract void Habitat();
}

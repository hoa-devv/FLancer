using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297
{
    class Book
    {
        string _bookName;
        public string Print()
        {
            return _bookName;
        }
        public void Input(string bkName)
        {
            _bookName = bkName;

        }
        static void Main(string[] args)
        {
            Book objBook = new Book();
            objBook.Input("C# - The Complete Reference");
            Console.WriteLine(objBook.Print());
        }
    }
}

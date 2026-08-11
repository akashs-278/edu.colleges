using System;
namespace ConsoleApplication7
{
    class Calculator
    {
        public void show(int a, int b)
        {
            Console.WriteLine("Sum of integers:" + (a + b));
        }
        public void show(double a, double b)
        {
            Console.WriteLine("Sum of doubles:" + (a + b));
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Calculator cal = new Calculator();
            cal.show(5, 10);
            cal.show(3.5, 2.5);
            Console.ReadKey();
        }
    }
}
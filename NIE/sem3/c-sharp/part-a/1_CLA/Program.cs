using System;

namespace first_program
{
    class Program
    {
        public static void Main(string[] args)
        {
            int num1 = int.Parse(args[0]);
            int num2 = int.Parse(args[1]);

            int sum = num1 + num2;

            Console.WriteLine("Sum of "+num1+" and "+num2+" is "+sum);
        }
    }
}
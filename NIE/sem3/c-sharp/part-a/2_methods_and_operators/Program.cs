using System;

namespace methods_and_operators
{
    class Program
    {
        static int Max(int num1, int num2)
        {
            return (num1 > num2) ? num1 : num2;
        }

        public static void Main(string[] args)
        {
            Console.Write("Enter the first value: ");
            int num1 = int.Parse(Console.ReadLine());

            Console.Write("Enter the second value: ");
            int num2 = int.Parse(Console.ReadLine());

            Console.WriteLine("\nOperators");
            Console.WriteLine("Addition = " + (num1 + num2));
            Console.WriteLine("Subtraction = " + (num1 - num2));
            Console.WriteLine("Multiplication = " + (num1 * num2));

            if (num2 != 0)
            {
                Console.WriteLine("Division = " + (num1 / num2));
                Console.WriteLine("Modulus = " + (num1 % num2));
            }
            else
            {
                Console.WriteLine("Division = Cannot divide by zero");
                Console.WriteLine("Modulus = Cannot perform modulus by zero");
            }

            Console.WriteLine("\nMethod");
            Console.WriteLine("Maximum of " + num1 + " and " + num2 + " is " + Max(num1, num2));
        }
    }
}
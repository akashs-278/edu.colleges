using System;

namespace methods_and_operators
{
    class Program
    {
        static void arithmetic(int num1, int num2)
        {
            Console.WriteLine("Addition : "+(num1+num2));
        }
        static void relational(int num1, int num2)
        {
            Console.WriteLine("Relational : "+(num1==num2));
        }
        static void logical(bool num1, bool num2)
        {
            Console.WriteLine("Logical : "+(num1&&num2));
        }
        static void assignment()
        {
            int a = 10;
            Console.WriteLine("Initial value : "+a);
            a += 5;
            Console.WriteLine("After += 5 : "+a);
        }
        public static void Main(string[] args)
        {
            int a = 20;
            int b = 6;

            Console.WriteLine("Arithmetic Operator");
            arithmetic(a,b);
            Console.WriteLine("\nRelational Operator");
            relational(a,b);
            Console.WriteLine("\nLogical Operator");
            logical(true,false);
            Console.WriteLine("\nAssignment Operator");
            assignment();
        }
    }
}
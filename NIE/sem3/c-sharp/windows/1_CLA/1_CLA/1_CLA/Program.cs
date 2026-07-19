using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1_CLA
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num1 = int.Parse(args[0]);
            int num2 = int.Parse(args[1]);

            int sum = num1 + num2;
            Console.WriteLine("Sum = "+sum);
            //Console.ReadKey();
        }
    }
}

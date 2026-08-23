using System;

class Program
{
    // Declare a delegate
    delegate void MyDelegate();

    static void Method1()
    {
        Console.WriteLine("Method 1 is executed.");
    }

    static void Method2()
    {
        Console.WriteLine("Method 2 is executed.");
    }

    static void Method3()
    {
        Console.WriteLine("Method 3 is executed.");
    }

    static void Main()
    {
        // Create multicast delegate
        MyDelegate del = Method1;
        del += Method2;
        del += Method3;

        Console.WriteLine("Executing multicast delegate:");
        del();

        Console.ReadKey();
    }
}
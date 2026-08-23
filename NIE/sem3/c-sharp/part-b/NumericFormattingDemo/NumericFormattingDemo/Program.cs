using System;

class Program
{
    static void Main()
    {
        double number = 1234567.89;

        Console.WriteLine("Original Number : " + number);

        Console.WriteLine("Currency (C)    : " + number.ToString("C"));
        Console.WriteLine("Decimal (D)     : " + 12345.ToString("D10"));
        Console.WriteLine("Exponential (E) : " + number.ToString("E"));
        Console.WriteLine("Fixed Point (F) : " + number.ToString("F2"));
        Console.WriteLine("Number (N)      : " + number.ToString("N2"));

        double percentage = 0.8567;
        Console.WriteLine("Percentage (P)  : " + percentage.ToString("P2"));

        Console.WriteLine("\nCustom Formats:");

        Console.WriteLine("0.00   : " + number.ToString("0.00"));
        Console.WriteLine("#,##0.00 : " + number.ToString("#,##0.00"));

        Console.ReadKey();
    }
}
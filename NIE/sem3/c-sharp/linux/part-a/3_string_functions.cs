using System;
class Program
{
    static void Main()
    {
        string message = " Hello CSharp World! ";
        Console.WriteLine("Length: " + message.Length);
        Console.WriteLine("Uppercase: " + message.ToUpper());
        Console.WriteLine("Lowercase: " + message.ToLower());
        Console.WriteLine("Substring(2, 5): " + message.Substring(2, 5));
        Console.WriteLine("Replace 'CSharp' with 'C#': " + message.Replace("CSharp", "C#"));
        Console.WriteLine("Contains 'World': " + message.Contains("World"));
        Console.WriteLine("Index of 'C': " + message.IndexOf('C'));
        string first = "Hello";
        string second = "World";
        string result = string.Concat(first, " ", second);
        Console.WriteLine("Concatenated String: " + result);
        Console.ReadKey();
    }
}
using System;
using System.IO;

class Program
{
    static void Main()
    {
        string filePath = "sample.txt";

        // Data to write
        string text = "Welcome to C# File Handling.\n";
        text += "This is the second line.\n";
        text += "This file was created using C#.";

        // Write to file
        File.WriteAllText(filePath, text);

        Console.WriteLine("Data written to file successfully.\n");

        // Read from file
        string data = File.ReadAllText(filePath);

        Console.WriteLine("Contents of the file:");
        Console.WriteLine("---------------------");
        Console.WriteLine(data);

        Console.ReadKey();
    }
}
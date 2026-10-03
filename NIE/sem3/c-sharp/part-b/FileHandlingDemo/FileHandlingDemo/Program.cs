using System;
using System.IO;

 class Program
 {
        static void Main(string[] args)
        {
            string filePath = @"C:\demo\Sample.txt";

            string textToWrite = "Hello World";
            File.WriteAllText(filePath, textToWrite);
            Console.WriteLine("Text written to file successfully.");

            string readText = File.ReadAllText(filePath);
            Console.WriteLine("Text read from a file:");
            Console.WriteLine(readText);

            Console.ReadKey();
        }
   }
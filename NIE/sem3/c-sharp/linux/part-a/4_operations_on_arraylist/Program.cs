using System;
using System.Collections;
class ArrayListDemo
{
    static void Main()
    {
        ArrayList cities = new ArrayList();
        cities.Add("Mysore");
        cities.Add("Bangalore");
        cities.Add("Mandya");
        Console.WriteLine("Initial ArrayList:");
        Display(cities);
        cities.Add("Udupi");
        Console.WriteLine("\nAfter Inserting/Adding 'Udupi' at index 1:");
        Display(cities);
        cities.Remove("Mandya");
        Console.WriteLine("\nAfter removing 'Mandya':");
        Display(cities);
        cities.Sort();
        Console.WriteLine("\nAfter sorting:");
        Display(cities);
        Console.ReadKey();
    }
    static void Display(ArrayList list)
    {
        foreach (var item in list)
        {
            Console.WriteLine(item);
        }
    }
}
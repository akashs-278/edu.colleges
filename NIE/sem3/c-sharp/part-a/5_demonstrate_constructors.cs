using System;
class Student
{
    // Fields
    public string name;
    public int age;
    // Default Constructor
    public Student()
    {
        name = "Unknown";
        age = 0;
        Console.WriteLine("Default Constructor Called");
    }
    // Parameterized Constructor
    public Student(string studentName, int studentAge)
    {
        name = studentName;
        age = studentAge;
        Console.WriteLine("Parameterized Constructor Called");
    }
    // Method to display student details
    public void Display()
    {
        Console.WriteLine("Name: " + name);
        Console.WriteLine("Age: " + age);
    }
}
class Program
{
    static void Main()
    {
        // Using default constructor
        Student student1 = new Student();
        student1.Display();

        // Using parameterized constructor
        Student student2 = new Student("Ram", 20);
        student2.Display();
        Console.ReadKey();
    }
}
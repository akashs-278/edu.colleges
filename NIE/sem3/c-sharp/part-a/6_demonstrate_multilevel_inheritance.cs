using System;
namespace ConsoleApplication6
{
    class Person
    {
        public string Name;
        public int Age;
        public void DisplayPersonInfo()
        {
            Console.WriteLine("Name: " + Name);
            Console.WriteLine("Age: " + Age);
        }
    }
    class Employee : Person
    {
        public int EmployeeId;
        public string Department;
        public void DisplayEmployeeInfo()
        {
            Console.WriteLine("Employee ID: " + EmployeeId);
            Console.WriteLine("Department: " + Department);
        }
    }
    class Manager : Employee
    {
        public string Role;
        public void DisplayManagerInfo()
        {
            Console.WriteLine("Role: " + Role);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Manager mgr = new Manager();
            mgr.Name = "John";
            mgr.Age = 35;
            mgr.EmployeeId = 1001;
            mgr.Department = "HR";
            mgr.Role = "HR Manager";
            Console.WriteLine("Manager Details:");
            mgr.DisplayPersonInfo();
            mgr.DisplayEmployeeInfo();
            mgr.DisplayManagerInfo();
            Console.ReadKey();
        }
    }
}
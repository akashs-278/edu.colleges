using System;

class MyClass
{
    // Declare an event
    public event EventHandler MyEvent;

    public void Start()
    {
        Console.WriteLine("Starting operation...");

        // Raise the event
        MyEvent?.Invoke(this, EventArgs.Empty);
    }
}

class Program
{
    static void EventHandlerMethod(object sender, EventArgs e)
    {
        Console.WriteLine("Event handler executed successfully.");
    }

    static void Main()
    {
        MyClass obj = new MyClass();

        // Attach event handler
        obj.MyEvent += EventHandlerMethod;

        // Start operation
        obj.Start();

        Console.ReadKey();
    }
}
using System;
class Complex
{
    public int real;
    public int imag;
    // Constructor
    public Complex(int r, int i)
    {
        real = r;
        imag = i;
    }
    // Overload + operator
    public static Complex operator +(Complex a, Complex b)
    {
        return new Complex(a.real + b.real, a.imag + b.imag);
    }
    // Display method
    public void Show()
    {
        Console.WriteLine(real + " + " + imag + "i");
    }
}
class Program
{
    static void Main()
    {
        Complex c1 = new Complex(1, 2);
        Complex c2 = new Complex(3, 4);
        Complex c3 = c1 + c2;
        Console.WriteLine("Result:");
        c3.Show();
        Console.ReadKey();
    }
}
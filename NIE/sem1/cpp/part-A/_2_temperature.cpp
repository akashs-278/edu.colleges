#include <iostream>
using namespace std;
int main()
{
    double Fahren, Celcius;
    cout << "Converting Fahrenheit to Celsius : " << endl;
    cout << "Enter temperature in Fahrenheit : ";
    cin >> Fahren;
    Celcius = (Fahren - 32) * 5 / 9;
    cout << "Temperature in Celsius:" << Celcius << endl;
    cout << "\nConverting Celsius to Fahrenheit : " << endl;
    Fahren = (Celcius * 9 / 5) + 32;
    cout << "Temperature in Fahrenheit : " << Fahren << endl;
    return 0;
}
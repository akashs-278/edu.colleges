#include <iostream>
using namespace std;
class vehicle
{
public:
    void vehicle_Info()
    {
        cout << "I am a vehicle" << endl;
    }
};
class Fourwheeler : public vehicle
{
public:
    void Fourwheeler_Info()
    {
        cout << "I have four wheeler" << endl;
    }
};
class car : public Fourwheeler
{
public:
    void car_Info()
    {
        cout << "I am a car" << endl;
    }
};
int main()
{
    car c1;
    c1.vehicle_Info();
    c1.Fourwheeler_Info();
    c1.car_Info();
    return 0;
}
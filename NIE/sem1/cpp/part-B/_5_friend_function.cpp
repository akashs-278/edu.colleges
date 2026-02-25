#include <iostream>
using namespace std;
class Distance
{
private:
    int meter = 25;

public:
    friend int addfive(Distance);
};
int addfive(Distance d)
{
    d.meter += 5;
    return d.meter;
}
int main()
{
    Distance D;
    cout << "Distance:" << addfive(D);
    return 0;
}
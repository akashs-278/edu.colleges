#include<iostream>
#include<iomanip>
#include<math.h>

using namespace std;
class copyc
{
    private:
        int x,n;
    public:
        int calculate();
        copyc(int xx,int nn)
        {
            x = xx;
            n = nn;
        }
};

int copyc::calculate()
{
    int sum = 1;
    for (int i = 1; i <= n; i++)
    {
        sum = sum + pow(x,i);
    }
    return sum;
}
int main()
{
    int n,x;
    cout<<"Enter the base and the power(x and n)"<<endl;
    cin>>x>>n;
    copyc obj(x,n);
    copyc cpy = obj;
    cout<<"Object 1:Sum of the series : "<<obj.calculate()<<endl;
    cout<<"Object 2:Sum of the series : "<<cpy.calculate()<<endl;
    return 0;
}
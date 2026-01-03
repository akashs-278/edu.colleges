#include<iostream>
#include<iomanip>

using namespace std;

class assign
{
    private:
        int n;
    public:
        assign (int nn)
        {
            n = nn;
        }
        int cube();
};

inline int assign :: cube()
{
    return (n*n*n);
}
int main()
{
    int n;
    cout<<"Enter a number"<<endl;
    cin>>n;
    assign N = n;
    cout<<"Cube of "<<n<<" = "<<N.cube()<<endl;
    return 0;
}
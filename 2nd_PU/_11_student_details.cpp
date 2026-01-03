#include<iostream>


using namespace std;
class student
{
    private:
        int rollno;
        char name[20];
    public:
        void read()
        {
            cout<<"Enter roll.no. and name"<<endl;
            cin>>rollno>>name;
        }
        void display()
        {
            cout<<"Roll no : "<<rollno<<endl;
            cout<<"Name : "<<name<<endl;
        }
};

class marks:public student
{
    private:
        int m1,m2,total;
    public:
        void read1()
        {
            cout<<"Enter two subject marks"<<endl;
            cin>>m1>>m2;
            total = m1 + m2;
        }
        void display1()
        {
            cout<<"Subject 1 = "<<m1<<endl;
            cout<<"Subject 2 = "<<m2<<endl;
            cout<<"total marks = "<<total<<endl;
        }
};
int main()
{
    marks obj;
    obj.read();
    obj.read1();
    obj.display();
    obj.display1();
    return 0;
}
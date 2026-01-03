#include<iostream>
#include<iomanip>

using namespace std;
class student
{
    private:
        int regno;
        char name[20];
        float fees;
    public:
        void get();
        void display();
};

void student::get()
{
    cout<<"Enter stuent register number"<<endl;
    cin>>regno;
    cout<<"Enter stuent name"<<endl;
    cin>>name;
    cout<<"Enter stuent fees"<<endl;
    cin>>fees;
}

void student::display()
{
    cout<<"\nStudent register number : "<<regno<<endl;
    cout<<"Student name : "<<name<<endl;
    cout<<"Student fees : "<<fees<<endl;
}
int main()
{
    student s, *sp;
    sp = &s;
    sp->get();
    sp->display();
    return 0;
}
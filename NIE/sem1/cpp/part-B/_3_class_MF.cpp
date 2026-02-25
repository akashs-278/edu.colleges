// Program to create a class for representing student details with appropriate member functions to accept and display the details.
#include <iostream>
using namespace std;
class student
{
    int regno;
    char name[15];
    char DOB[11];
    char course[5];

public:
    void accept();
    void display();
};
void student::accept()
{
    cout << "Enter student details:" << endl;
    cout << "Reg no: ";
    cin >> regno;
    cout << "Name: ";
    cin >> name;
    cout << "DOB: ";
    cin >> DOB;
    cout << "Course: ";
    cin >> course;
}
void student::display()
{
    cout << endl;
    cout << "Student Details are:" << endl;
    cout << "Reg no = " << regno << endl;
    cout << "Name = " << name << endl;
    cout << "DOB = " << DOB << endl;
    cout << "Course = " << course << endl;
}
int main()
{
    student S1;
    S1.accept();
    S1.display();
    return 0;
}
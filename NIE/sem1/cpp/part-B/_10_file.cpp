// Program to read and display the content of a text file

#include <fstream>
#include <string>
#include <iostream>
using namespace std;
int main()
{
    ifstream inputFile("input.txt");
    string line;
    cout << "File content:" << endl;
    while (getline(inputFile, line))
    {
        cout << line << endl;
    }
    inputFile.close();
    return 0;
}
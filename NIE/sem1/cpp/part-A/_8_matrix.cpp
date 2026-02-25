// Program to compute sum of principle diagonal, lower diagonal and upper diagonal elements of a matrix
#include <iostream>
using namespace std;
int main()
{
    int matrix[3][3], size, sum_PD = 0, i, j;
    int sum_LD = 0, sum_UD = 0;
    cout << "Enter size of matrix:" << endl;
    cin >> size;
    cout << "Enter matrix elements:" << endl;
    for (i = 0; i < size; i++)
    {
        for (j = 0; j < size; j++)
        {
            cin >> matrix[i][j];
        }
    }
    for (i = 0; i < size; i++)
    {
        for (j = 0; j < size; j++)
        {
            if (i == j)
                sum_PD += matrix[i][j];
            else if (i > j)
                sum_LD += matrix[i][j];
            else
                sum_UD += matrix[i][j];
        }
    }
    cout << "Sum of Principal Diagonal Elements=" << sum_PD << endl;
    cout << "Sum of Lower Diagonal Elements=" << sum_LD << endl;
    cout << "Sum of Upper Diagonal Elements=" << sum_UD << endl;
    return 0;
}
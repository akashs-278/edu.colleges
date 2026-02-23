// program to demonstrate single inheritance ( simple calculator - base class, Advanced Calculator - Derived class)

// three class file will be created
// 1. clac
// 2. SimClac
// 3. AdvCalc


class SimCalc {
    int add(int a, int b) {
        return a + b;
    }

    int subtract(int a, int b) {
        return a - b;
    }

    int multiply(int a, int b) {
        return a * b;
    }

    double divide(int a, int b) {
        if (b != 0) {
            return (double) a / b;
        } else {
            System.out.println("Error: Division by zero.");
            return 0;
        }
    }
}

class AdvCalc extends SimCalc {
    double squareRoot(int a) {
        return Math.sqrt(a);
    }

    double power(int a, int b) {
        return Math.pow(a, b);
    }
}

class _5_calc{
    public static void main(String[] args) {
        AdvCalc ac = new AdvCalc();
        System.out.println("Simple Calculator...");
        System.out.println("Addition = "+ac.add(10, 5));
        System.out.println("Subtraction = "+ac.subtract(10, 5));
        System.out.println("Multiplication = "+ac.multiply(10, 5));
        System.out.println("Division = "+ac.divide(10, 5));
        
        System.out.println("\nAdvance Calculator...");
        System.out.println("Square Root : "+ac.squareRoot(25));
        System.out.println("Power : "+ac.power(2,3));
    }
}
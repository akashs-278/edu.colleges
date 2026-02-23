public class _4_method_overloading {
    int add(int a, int b){
        return a+b;
    }

    int add(int a, int b,int c){
        return a+b+c;
    }

    double add(double a, double b){
        return a+b;
    }

    public static void main(String[] args) {
        _4_method_overloading f =new _4_method_overloading();
        System.out.println("Sum of 10 and 20 (int) : "+f.add(10, 20));
        System.out.println("Sum of 10, 20 and 30 (int) : "+f.add(10, 20,30));
        System.out.println("Sum of 10.5 and 20.5 (double) : "+f.add(10.5, 20.5));
    }
}

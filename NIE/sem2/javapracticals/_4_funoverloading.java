class sum{
    int add (int a,int b){
        return a + b;
    }
    double add (double a,double b){
        return a+b;
    }
    double add (double a,double b,double c){
        return a+b+c;
    }
    
}
public class _4_funoverloading {
    public static void main(String[] args) {

        sum funO = new sum();
        System.out.println(funO.add(2,5));
        System.out.println(funO.add(2.5,5.6,5.6));
        System.out.println(funO.add(2.5,5.6));
    }
}

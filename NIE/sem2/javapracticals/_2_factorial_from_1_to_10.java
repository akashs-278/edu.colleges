public class _2_factorial_from_1_to_10 {
    static int fact(int n)
    {
        if (n == 0 || n == 1)
        {
            return 1;
        }else{
            return n*fact(n-1);
        }
    }
    public static void main(String[] args) {
        int n = 10;
        for (int i = 0;i <= n;i++)
        {
            System.out.println("Factorial of "+i+" is "+fact(i));
        }
    }

}

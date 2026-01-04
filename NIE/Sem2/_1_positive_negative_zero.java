import java.util.Scanner;
class _1_positive_negative_zero{
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        System.out.println("Enter a number");
        int n = sc.nextInt();

        if (n == 0)
        {
            System.out.println("You entered zero(0).");
        }else if (n > 0) {
            System.out.println(n+" is a positive number.");
        }else{
            System.out.println(n+" is a negative number.");
        }
        sc.close();
    }
}
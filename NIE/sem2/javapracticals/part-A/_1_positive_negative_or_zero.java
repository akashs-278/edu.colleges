import java.util.*;
class _1_positive_negative_or_zero {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.print("Enter a number : ");
        int num = s.nextInt();

        if (num > 0){
            System.out.println("It's a positive number.");
        }else if (num < 0){
            System.out.println("It's a negative number.");
        }else{
            System.out.println("It's a zero.");
        }
        s.close();
    }
}

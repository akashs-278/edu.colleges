import java.util.*;
class _3_number_format_exception {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        try {
            System.out.println("Enter integer value(a) : ");
            int a = Integer.parseInt(sc.nextLine());
            System.out.println("Enter integer value(b) : ");
            int b = Integer.parseInt(sc.nextLine());
            System.out.println("a = "+a+", b = "+b);
        } catch (NumberFormatException e) {
            System.out.println("Error : Enter values are not valid integer numbers");
        }
    }
}

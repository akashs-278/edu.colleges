import java.util.*; 
class _7_palindrome {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string to check for palindrome:");
        String str = sc.nextLine();

        str = str.toLowerCase();

        String rev = "";
        for (int i = str.length()-1; i >= 0; i--) {
            rev=rev+str.charAt(i);
        }
        if (str.equals(rev)){
            System.out.println("String is a palindrome.");
        }
        else{
                System.out.println("String is not a palindrome.");
            }
            sc.close();
    }
}

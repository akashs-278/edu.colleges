// Progarm to demonstrate classes and objects
class student {
    int id;
    String name, course;

    void set(int d, String n, String c) {
        id = d;
        name = n;
        course = c;
    }

    void display() {
        System.out.println("Id : " + id);
        System.out.println("Name : " + name);
        System.out.println("Course : " + course);
    }
}

class _3_stu_details {
    public static void main(String[] args) {
        student stu1 = new student();
        student stu2 = new student();
        stu1.set(1111, "Lilly", "BCA");
        stu2.set(2222, "Rose", "B.Sc");
        System.out.println("\nStudent 1 Details : ");
        stu1.display();
        System.out.println("\nStudent 2 Details : ");
        stu2.display();
    }

}
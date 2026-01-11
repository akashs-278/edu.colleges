class car {
    String brand;
    int year;

    void display(){
        System.out.println("Brand : "+brand);
        System.out.println("Year : "+year);
    }
    
}

public class _3_class_and_obj {
    public static void main(String[] args) {
        car c = new car();
        c.brand = "Innova";
        c.year = 2018;
        c.display();

    }
}

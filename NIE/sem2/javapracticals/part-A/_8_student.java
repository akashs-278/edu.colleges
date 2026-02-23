class _8_student {
    int regno, marks1, marks2, marks3, total;
    String name;

    _8_student(int rn, String na, int m1, int m2, int m3) {
        regno = rn;
        name = na;
        marks1 = m1;
        marks2 = m2;
        marks3 = m3;
        TotalMarks();
    }

    void TotalMarks() {
        total = marks1 + marks2 + marks3;
    }

    void display() {
        System.out.println("Registration NO : " + regno);
        System.out.println("Name : " + name);
        System.out.println("Marks: " + marks1 + " " + marks2 + " " + marks3);
        System.out.println("Total Marks : " + total);
        System.out.println("------------------------");
    }

    public static void main(String[] args) {
        _8_student s[] = new _8_student[3];

        s[0] = new _8_student(101, "Alice", 85, 90, 92);
        s[1] = new _8_student(102, "Bob", 78, 83, 88);
        s[2] = new _8_student(103, "Charlie", 92, 94, 89);

        for (int i = 0; i < s.length; i++) {
            System.out.println("Student " + (i + 1) + " Details : ");
            s[i].display();
        }
    }
}
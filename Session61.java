package buoi4;

import java.sql.SQLOutput;
import java.util.Scanner;

class  Student{
    String studName;
    int studAge;

    void nhap()
    {
        Scanner scan = new Scanner(System.in);
        System.out.println("Nhap vao day ten sinh vien : ");
        studName = scan.nextLine();
        System.out.println("Nhap vao day so tuoi : ");
        studAge = scan.nextInt();

    }


    void initialize()
    {
        studName = "James Anderson";
        studAge = 26;
    }

    void display ()
    {
        System.out.println("Student Name : " + studName);
        System.out.println("Student Age : " + studAge);
    }

    public static void main (String[] args)
    {
        Student objStudent = new Student();
        objStudent.initialize();
        objStudent.nhap();
        objStudent.display();
        Student objHoa = new Student();
        objStudent.nhap();
        objStudent.display();


        int ques;
        do{
        Scanner scan = new Scanner(System.in);
        Student objJK = new Student();
        objStudent.nhap();
        objStudent.display();
        System.out.println("Ban co muon tiep tuc khong : ");
        ques = scan.nextInt();

        } while (ques != 0 );
        System.out.println("Over");




    }


}
package TestJava;
import java.util.Scanner;

public class Flight {
    private int number;
    private String destination;

    public Flight(int number, String destination) {
        this.number = number;
        this.destination = destination;
    }

    public Flight() {
    }

    public int getNumber() {
        return number;
    }

    public String getDestination() {
        return destination;
    }

    public void display() {
        System.out.println("So hieu chuyen bay la:" + number);
        System.out.println("Noi den:" + destination);
    }


    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("Nhap so hieu chuyen bay");
        int number = scan.nextInt();
        System.out.println("Nhap noi muon den");
        String destination = scan.next();
        Flight f1 = new Flight(number, destination);
        f1.display();

    }
}

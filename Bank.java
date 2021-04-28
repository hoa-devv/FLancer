package TestJava;
import java.util.Scanner;


public class Bank {
    private double balance;
    private double rate;
    private double interest;
    public  Bank(){}
    public Bank(double balance , double rate){
        this.balance = balance;
        this. rate = rate;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }
    public  double calculateInterest(){
        interest =  balance *(rate / 1000);
        return interest;
    }

    @Override
    public String toString() {
        return "Bank{" +
                "balance=" + balance +
                ", rate=" + rate +
                ", interest=" + interest +
                '}';
    }
    public static void main(String[] args) {
        Bank b = new Bank();
        Scanner sc = new Scanner(System.in);
        System.out.print("The is balance : " );
        b.balance = sc.nextDouble();
        System.out.print("The is rate : " );
        b.rate = sc.nextDouble();
        System.out.print("The is calculateInterest : "   + b.calculateInterest());
    }
}


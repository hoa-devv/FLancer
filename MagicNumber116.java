package buoi3;

import java.util.Scanner;

public class MagicNumber116 {
    public static void main(String[] args) {
       int number;
        Scanner in = new Scanner(System.in);

        System.out.print("Enter a positive integer: ");
        number = in.nextInt();

        if (isMagic(number)){
            System.out.println(number + "is a magic number ");
        }else {
            System.out.println(number + "is not a magic number ");
        }
        in.close();
}}

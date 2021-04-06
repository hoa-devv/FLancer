package buoi3;

public class Methods111 {
    public static void main(String[] args) {
        double r = 1.1, area, area2;

        area = getArea(r);

        area2 = getArea(2.2);

        System.out.println("Area 3 is " + getArea(3.3));
    }

        public static double getArea (double radius){
            return radius * radius * Math.PI;


    }
}

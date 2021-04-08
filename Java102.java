package buoi4;

public class Java102 {
    private double radius;
    private String color;

    public Java102() {
        radius = 1.0;
        color = "red";

    }
    public  Circle(double r) {
        radius = r;
        color = " red";
    }
    public  Circle9(double r ,String  c) {
        radius  = r;
        color = c;
    }

    public double getRadius (){
        return radius;
    }
    public String getColor (){
        return  color ;
    }
    public double getArea(){
        return radius * radius *Math.PI;
    }
}

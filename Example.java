package Java2;
import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import java.util.ListIterator;

public class Example {
    public static void main(String []args){
        List<String> names = new ArrayList<>();
        names.add("Hoadep trai");
        names.add("Tien ngu");
        names.add("Ngoc anh beo");
        names.add("Trung dai gia");

        System.out.println("Nhom anh em: " + names);

        names.add(1, "Hoang anh" );
        System.out.println("them thang lol" +names);

        System.out.println("Hoi anh em co thang lol ");
        for (String ae: names){
            System.out.println(ae);
        }


        System.out.println("===Ae theo thu tu === ");
        Iterator<String> HuongThuan = names.iterator();
                while(HuongThuan.hasNext()){
                    String LayTunames = HuongThuan.next();
                    System.out.println(LayTunames);
                }

        System.out.println("Ae theo thu tu nguoc lai");
                ListIterator<String> HuongDao = names.listIterator(names.size());
                while (HuongDao.hasPrevious()){
                    String LayTunames = HuongDao.previous();
                    System.out.println(LayTunames);
                }


        System.out.println("========================================");


        names.remove(2);
        System.out.println("After remove(Tien): "+names);

        boolean XT = names.remove("Hoadep trai");
        System.out.println("After remove(Hoadep trai)" +names);

        List<String> NewBro  = new ArrayList<>();
        NewBro.add("Hoa k mun ");
        NewBro.add("Trung ngheo");
        NewBro.add("Ngoc anh k beo ");

        System.out.println("... " +NewBro);
        names.removeAll(NewBro);
        System.out.println("After remove three students: " +names);

        names.removeIf(n ->(n.charAt(0) == 'H'));
        System.out.println("After remove thang bat dau bang chu 'H' : " + names);


    }
}

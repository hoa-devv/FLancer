package buoi4;

public class Code64 {
    int customerID;
    String customerName;
    String customerAddress;
    int customerAge;

    /**
     * Declare instance methodchange CustomerAddress is created to change
     * the address of the customer object
     */
    void changeCustomerAdress(String address){
        customerAddress = address;

    }
    /**
     * Declare an instance method display CustomerInformation is created to
     * display the details of the customer object
     */
    void displayCustomerInfomation() {
        System.out.println("Customer Identification Number : " + customerID);
        System.out.println("Customer Name : " +customerName);
        System.out.println("Customer Address : " + customerAddress);
        System.out.println("Customer Age : " + customerAge);

    }
}

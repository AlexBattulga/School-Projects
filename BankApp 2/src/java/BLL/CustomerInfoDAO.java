package BLL;

/**
 *
 * @author Enkhbaatar
 */
public class CustomerInfoDAO {
    
    private String FirstName;
    private String LastName;
    private String Dob;
    private String PhoneNumber;
    private String Address;
    private String Email;
    private String Phone;
    
    public void setFirstName(String firstname){
        FirstName = firstname;
    }
    public String getFirstName(){
        return FirstName;
    }
    
    public void setLastName(String lastname){
        LastName = lastname;
    }
    public String getLastName(){
        return LastName;
    }
    
    public void setDob(String dob){
        Dob = dob;
    }
    public String getDob(){
        return Dob;
    }
    
    public void setPhoneNumber(String phonenumber){
        PhoneNumber = phonenumber;
    }
    public String getPhoneNumber(){
        return PhoneNumber;
    }
    
    public void setAddress(String address){
        Address = address;
    }
    public String getAddress(){
        return Address;
    }
    
    public void setEmail(String email){
        Email = email;
    }
    public String getEmail(){
        return Email;
    }
    
    public void setPhone(String phone){
        Phone = phone;
    }
    public String getPhone(){
        return Phone;
    }
}

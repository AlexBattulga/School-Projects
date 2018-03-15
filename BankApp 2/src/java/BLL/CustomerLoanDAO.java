
package BLL;

public class CustomerLoanDAO {
    public String FirstName;
    public String LastName;
    public String LoanAmount;
    public String Month;
    
    public void setFirstName(String f_name){
        FirstName = f_name;
    }
    
    public String getFirstName(){
        return FirstName;
    }
    
    public void setLastName(String l_name){
        LastName = l_name;
    }
    
    public String getLastName(){
        return LastName;
    }
    
    public void setLoanAmount(String l_amount){
        LoanAmount = l_amount;
    }
    
    public String getLoanAmount(){
        return LoanAmount;
    }
    
    public void setMonth(String month){
        Month = month;
    }
    
    public String getMonth(){
        return Month;
    }
}

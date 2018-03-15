package BLL;

/**
 *
 * @author Enkhbaatar
 */
public class DepositDrawalDAO {
    
    public String TransactionID;
    public String CustomerName;
    public String TransactionType;
    public String TransactionDate;
    public String TransactionAmount;
    
    
    public void setTransactionID(String t_ID){
        TransactionID = t_ID;
    }
    public String getTransactionID(){
        return TransactionID;
    }
    
    
    
    
    public void setCustomerName(String c_Name){
        CustomerName = c_Name;
    }
    public String getCustomerName(){
        return CustomerName;
    }
    public void setTransactionType(String t_Type){
        TransactionType = t_Type;
    }
    public String getTransactionType(){
        return TransactionType;
    }
    public void setTransactionDate(String t_Date){
        TransactionDate = t_Date;
    }
    public String getTransactionDate(){
        return TransactionDate;
    }
    public void setTransactionAmount(String t_Amount){
        TransactionAmount = t_Amount;
    }
    public String getTransactionAmount(){
        return TransactionAmount;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BLL;

import java.util.ArrayList;

/**
 *
 * @author Enkhbaatar
 */
public class DepositList {
    private ArrayList<DepositDrawalDAO> obj ;

    public DepositList()
    {
        obj= new ArrayList<DepositDrawalDAO>();
    }
    
    public ArrayList<DepositDrawalDAO> getTransactionList() {
        return obj;
    }

    public void addTransaction(DepositDrawalDAO person) {
        obj.add(person);
    }
    public void removeTransaction(DepositDrawalDAO person){
        obj.remove(person);
    }
    
    public void deleteTransactionByID(String id)
    {
        for (DepositDrawalDAO dep:obj)
        {
            if(dep.TransactionID.equals(id))
            {
                removeTransaction(dep);
            }
        }
    }

    public int totalTransaction() {
        return obj.size();
    }
}

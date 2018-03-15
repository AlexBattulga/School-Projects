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
public class CustomerList {
    
    private ArrayList<CustomerInfoDAO> obj ;

    public CustomerList()
    {
        obj= new ArrayList<CustomerInfoDAO>();
    }
    
    public ArrayList<CustomerInfoDAO> getCustomerList() {
        return obj;
    }

    public void addCustomer(CustomerInfoDAO customer) {
        obj.add(customer);
    }

    public int totalCustomer() {
        return obj.size();
    }
}

<%-- 
    Document   : LoanInfo
    Created on : Dec 6, 2017, 3:39:20 PM
    Author     : saidmans
--%>

<%@page import="BLL.CustomerLoanDAO"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500i,600,600i,700,700i,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600i,700,900" rel="stylesheet">
        
        <!--CSS-->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <title>Loan Information</title>
    </head>
    <body>
        <div class="container">
            
            <div class="row">
                
                <div class="col-md-6">
                    
                    <div class="loan-tab">
                        
                        <table class="table table-responsive">
                            
                            <tr>
                                <thead>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Loan Amount</th>
                                  <th scope="col">Interest Pay</th>
                                   <th scope="col">Date</th>
                                   <th scope="col">Interest</th>
                                </thead>
                               <% CustomerLoanDAO customer = (CustomerLoanDAO) session.getAttribute("currentSessionUser"); %>
                                <tbody>
                                    
                                    <tr>
                                        
                                        <td><%= customer.getFirstName() %></td>
                                        <td><%= customer.getLastName() %></td>
                                        <td><%= customer.getLoanAmount() %></td>
                                        <td><%= customer.getMonth() %></td>
                                        <td>getLoanAmount * 10</td>
                                    </tr>
                                    
                                </tbody>
                            </tr>
                            
                        </table>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        
    </body>
</html>

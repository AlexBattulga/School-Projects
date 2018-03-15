<%-- 
    Document   : DepositWithDrawalInfo
    Created on : Dec 4, 2017, 2:27:49 AM
    Author     : Enkhbaatar
--%>

<%@page import="BLL.DepositList"%>
<%@page import="BLL.DepositDrawalDAO"%>
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
        
        <title>DEPOSIT/WITHDRAW</title>
    </head>
    <body>
        
         <div class="container">
             
             <div class="row">
                 
                 <div class="col-md-1">
                     
                    <form class="back-button" action="WelcomePage.jsp" method="POST">
                     
                     <button class="btn btn-danger">Go Back</button>
                     
                    </form>
                     
                 </div>
                 
             </div>
             
             <div class="row">
                 
                 <div class="col-md-12">
                     
                    <div class="table-style">
                     
                        
                        
                     <table class="table table-responsive">
            
                        <thead>

                            <tr>

                                <th scope="col">#</th>
                                <th scope="col">Transaction ID</th>
                                <th scope="col">Customer Name</th>
                                <th scope="col">Transaction Type</th>
                                <th scope="col">Transaction Date</th>
                                <th scope="col">Transaction Amount</th>
                            </tr>

                        </thead>

                        <tbody>
                                 <% DepositList clist = (DepositList) (session.getAttribute("currentSessionDeposit"));%>
            <% if (clist != null) {
                    for (DepositDrawalDAO depoDOA : clist.getTransactionList()) {
            %>
                            <tr>

                                <th scope="col"></th>
                                 <td ><%= depoDOA.getTransactionID()%></td>
                                 <td ><%= depoDOA.getCustomerName()%></td>
                                 <td><%= depoDOA.getTransactionType()%></td>
                                 <td><%= depoDOA.getTransactionDate()%></td>
                                 <td><%= depoDOA.getTransactionAmount()%></td>
                                 <td>
                                     <form action="DepositDeleteServlet">
                                         <input type="hidden" name="transactionid" value=<%= depoDOA.getTransactionID()%>>
                                     <button class="btn btn-danger" >Delete</button>
                                     </form>
                                 </td>
                                 <td>
                                     <button class="btn btn-danger">Edit</button>
                                 </td>
                            </tr>
                            <%
                            }
                            }
                            %>
                        </tbody>

                    </table>
                            
                   </div>
                     
                 </div>
                 
             </div>
             
         </div>
                            
        <!-- footer -->
        <footer>
            <div class="container">
                
                <div class="row"> 
                    
                    <div class="col-md-8 text-center">
                        
                        <div id="copyright">
                            
                            <p>Copyright &copy;2017<a href="#"> - CMP220 Bank Application</a></p>
                            
                        </div>
                        
                    </div>
                    
                    <div class="col-md-4">
                        
                        <div class="arrow-up">
                            
                            <a class="test" href="#headerID"><i class="fa fa-angle-up"></i></a>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </footer>                    
        
    </body>
</html>

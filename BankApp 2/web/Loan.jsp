<%-- 
    Document   : Loan
    Created on : Dec 6, 2017, 3:17:37 PM
    Author     : saidmans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Customer Loan</title>
    </head>
    <body>
        <div class="container">
            
            <div class="row">
                
                <div class="col-md-6">
                    
                    <div class="loan-table">
                        
                        <form action="CustomerLoanServlet" method="post">
                            
                            <input class="form-control" type="text" name="f_name" placeholder="First Name">
                            
                            <input class="form-control" type="text" name="l_name" placeholder="Last Name">
                            
                            <input class="form-control" type="text" name="l_" placeholder="Loan Amount">
                            
                            <input class="form-control" type="text" name="l_name" placeholder="Months">
                            
                            <button class="btn btn-success" type="submit" value="submit">Process</button>
                            
                        </form>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        
    </body>
</html>

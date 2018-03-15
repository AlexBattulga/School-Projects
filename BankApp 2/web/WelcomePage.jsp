<%-- 
    Document   : welcomePage
    Created on : Nov 29, 2017, 12:05:04 AM
    Author     : Enkhbaatar
--%>
<%@page import="BLL.CustomerList"%>
<%@page import="BLL.CustomerInfoDAO"%>
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
        
        <title>Welcome</title>
    </head>
    <body>
        
        <div class="welcome-user" id="nav-top">
            
            <div class="container">
                
                <div class="row">
                    
                    <div class="col-md-12">
                        
                        <div class="greeting-guest">
                            
                            <h1 class="display-4">Welcome</h1>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </div>
       
                            <div class="header">
                                
                                <div class="header-overlay">
                                    
                                    <div class="container">
                                        
                                        <div class="row">
                                            
                                            <div class="col-md-12">
                                                
                                                <div class="bank-icon">
                                                    
                                                    <a href="#"><i class="fa fa-bank"></i></a>
                                                    
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                        
                                        <div class="row">
                                            
                                            <div class="col-md-12">
                                                
                                                <div class="display">
                                                    
                                                    <ul>
                                                        
                                                        <li><a href="#section-one"> Customer Information</a></li>
                                                        <li><a href="#depo"> Deposit/Withdrawal </a></li>
                                                        <li><a href="#loan"> Customer Loan </a></li>
                                                        <li><a href="#account"> Customer Account </a></li>
                                                        <li><a href="#balance"> Statement/Balance</a></li>
                                                        
                                                    </ul>
                                                    
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                            </div>                     
                            <section class="customer-info" id="section-one">
                                
                                <div class="container">
                                    
                                    <div class="row">
                                        
                                        <div class="col-md-10 col-md-offset-1">
                                            
                                            <div class="section-title">
                                                
                                                <h2> Customer Information </h2>
                                                <p> This is customer information section. This section will show all personal information of each customer</p>
                                                
                                            </div>
                                            
                                            <div class="col-md-12">
                        
                                            <div class="arrow-up text-right">

                                                <a class="test" href="#nav-top"><i class="fa fa-angle-up"></i></a>

                                            </div>

                                        </div>
                                            
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                                <div class="container">
                                    
                                    <div class="row">
                                        
                                        <div class="col-md-12">
                                            
                                            <div class="cus-info">
                                                
                                                <table class="table table-responsive">
                                                    
                                                    <thead>
                                                      <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">First Name</th>
                                                        <th scope="col">Last Name</th>
                                                        <th scope="col">Date of Birth</th>
                                                        <th scope="col">Address</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Phone Number</th>
                                                      </tr>
                                                    </thead>
                                                    <tbody>
                                                        
                                                        <% CustomerList clist = (CustomerList) (session.getAttribute("currentSessionUser"));%>
                                                        <% if (clist != null) {
                                                                for (CustomerInfoDAO person : clist.getCustomerList()) {
                                                        %>
                                                        
                                                      <tr>
                                                          <th scope="row" ></th>
                                                        <td><%= person.getFirstName()%></td>
                                                        <td><%= person.getLastName()%></td>
                                                        <td><%= person.getDob()%></td>
                                                        <td><%= person.getAddress()%></td>
                                                        <td><%= person.getEmail()%></td>
                                                        <td><%= person.getPhoneNumber()%></td>
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
                                
                            </section>   
                                                      
                          <!-- Deposit/Withdrawal -->
                          <section class="deposit" id="depo">
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-10 col-md-offset-1">
                                          
                                          <div class="section-title">
                                              
                                              <h2>Deposit/Withdrawal</h2>
                                              <p>This is a deposit and withdrawal section. This section will show how much money customer deposit or withdraw and WHEN and HOW MUCH</p>
                                              
                                          </div>
                                          
                                          <div class="col-md-12">
                        
                                            <div class="arrow-up text-right">

                                                <a class="test" href="#nav-top"><i class="fa fa-angle-up"></i></a>

                                            </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                                  
                             </div>
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-12">
                                          
                                          <div class="depo-with">
                                              
                                              <form action="DepositDrawalServlet" method="POST">
                                                  
                                                  <div class="row">
                                                      
                                                      <div class="col-md-6 col-md-offset-3">
                                                          
                                                          <input type="text" class="form-control" name="transactionid" placeholder=" 4 digits ID # " required pattern="[0-9]{4}">
                                                          
                                                          <input type="text" class="form-control" name="customername" placeholder="--select--" required>
                                                          
                                                          <input type="text" class="form-control" name="transactiontype" placeholder="--select--" required>
                                                          
                                                          <input type="date" class="form-control" name="transactiondate" placeholder="MM/DD/YEAR" required>
                                                          
                                                          <input type="number" class="form-control" name="transactionamount" placeholder="$......" required>
                                                          
                                                          <button type="submit" value="submit" class="form-control btn btn-primary"> Process </button>
                                                          
                                                      </div>
                                                      
                                                  </div>
                                                  
                                              </form>
                                              
                                          </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                              
                          </section>
                          
                          <!-- Loan Control -->                            
                          <section class="loan-control" id="loan">
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-10 col-md-offset-1">
                                          
                                          <div class="section-title">
                                              
                                              <h2> Customer Loan </h2>
                                              <p>This is a customer loan section. This section will show customer's loan informations</p>
                                              
                                          </div>
                                          
                                          <div class="col-md-12">
                        
                                            <div class="arrow-up text-right">

                                                <a class="test" href="#nav-top"><i class="fa fa-angle-up"></i></a>

                                            </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                                  
                             </div>
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-12">
                                          
                                          <div class="loan-info">
                                              
                                              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
                                              
                                          </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                              
                          </section>
                          
                          <!-- Customer Account -->                            
                          <section class="customer-acc" id="account">
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-10 col-md-offset-1">
                                          
                                          <div class="section-title">
                                              
                                              <h2> Customer Account </h2>
                                              <p>This is a customer account section. This section will show how many account customer have like saving and checking accounts</p>
                                              
                                          </div>
                                          
                                          <div class="col-md-12">
                        
                                            <div class="arrow-up text-right">

                                                <a class="test" href="#nav-top"><i class="fa fa-angle-up"></i></a>

                                            </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                                  
                             </div>
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-12">
                                          
                                          <div class="cus-acc">
                                              
                                              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
                                              
                                          </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                              
                          </section>
                          
                          <!-- Statement & Balance -->                            
                          <section class="state-balance" id="balance">
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-10 col-md-offset-1">
                                          
                                          <div class="section-title">
                                              
                                              <h2> Statement/Balance </h2>
                                              <p>This is a customer statement and balance section. This section will show available money balance in saving and checking accounts</p>
                                              
                                          </div>
                                          
                                          <div class="col-md-12">
                        
                                            <div class="arrow-up text-right">

                                                <a class="test" href="#nav-top"><i class="fa fa-angle-up"></i></a>

                                            </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                                  
                             </div>
                              
                              <div class="container">
                                  
                                  <div class="row">
                                      
                                      <div class="col-md-12">
                                          
                                          <div class="cus-balance">
                                              
                                              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
                                              
                                          </div>
                                          
                                      </div>
                                      
                                  </div>
                                  
                              </div>
                              
                          </section>
                          
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
                            
                            <a class="test" href="#nav-top"><i class="fa fa-angle-up"></i></a>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </footer>
                          
    </body>
</html>

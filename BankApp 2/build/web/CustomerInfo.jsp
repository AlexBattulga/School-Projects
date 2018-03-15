<%-- 
    Document   : CustomerInfo
    Created on : Oct 25, 2017, 9:20:35 PM
    Author     : Enkhbaatar
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!--fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500i,600,600i,700,700i,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600i,700,900" rel="stylesheet">
        
        <!--CSS-->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        
        <title>CMP 220 Bank Application</title>
    </head>
    
    <body>
        <!-- header -->
        <header class="header" id="headerID" >
        
            <div class="header-overlay">
                
                <div class="container">
                    
                    <div class="row">
                        
                        <div class="col-md-12">
                            
                            <div class="logo text-center">
                                
                                <h2>Ld Bank</h2>
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="row">
                        
                        <div class="col-md-8">
                            
                            <div class="header-text">
                                
                                <h1>Welcome to bank application</h1>
                                <p> CMP 220 group project</p>
                                
                            </div>
                            
                            <div class="header-btns">
                                
                                <a class="btn btn-download" href="#accountID">Create Account</a>
                                
                                <a class="btn btn-login" href="#">Login</a>
                                
                            </div>
                            
                        </div>
                        
                        <div class="col-md-4">
                            
                            <div class="header-image">
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </header>
        
        <!-- about us -->
        <section class="about-us">
            
            <div class="container">
                
                <div class="row">
                    
                    <div class="col-md-10 col-md-offset-1">
                        
                        <div class="section-title">
                        
                        <h2>About Us</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>
                        
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            <div class="about-us-viu">
                
                <div class="container">
                    
                    <div class="row">
                        
                        <div class="col-md-3">
                            
                            <div class="left-section">
                                
                                <h2>Open account</h2>
                                
                            </div>
                            <div class="left-section-desc">
                                
                                <div> <i class="fa fa-money"></i></div>
                                <h3>Checking</h3>
                                
                            </div>
                            
                            <div class="left-section-desc">
                                
                                <div> <i class="fa fa-balance-scale"></i></div>
                                <h3>Saving</h3>
                                
                            </div>
                            
                            <div class="left-section-desc">
                                
                                <div> <i class="fa fa-life-saver"></i></div>
                                <h3>Both</h3>
                                
                            </div>
                            
                        </div>
                        
                        <div class="col-md-6">
                            
                            <div class="about-viu">
                                
                                <img class="img-responsive" src="images/viuStudent.png" alt="viu">
                                
                            </div>
                            
                        </div>
                        
                        <div class="col-md-3">
                            
                            <div class="right-section">
                                
                                <h2>Low Interest</h2>
                                
                            </div>
                            <div class="right-section-desc">
                                
                                <div> <i class="fa fa-mortar-board"></i></div>
                                <h3>Student Loan</h3>
                                
                            </div>
                            
                            <div class="right-section-desc">
                                
                                <div> <i class="fa fa-home"></i></div>
                                <h3>Mortgage</h3>
                                
                            </div>
                            
                            <div class="right-section-desc">
                                
                                <div> <i class="fa fa-car"></i></div>
                                <h3>Vehicle </h3>
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </section>
        
        <!-- create account -->
        <section class="account" id="accountID" >
            
            <div class="account-overlay">
                
                <div class="container">
                    
                    <div class="row">
                        
                        <div class="col-md-12">
                            
                            <div class="section-title">
                                
                                <h2>Create Account</h2>
                                <p>Thank you for joining us. You are in good hand!</p>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="create-account-form">
                    
                        <div class="container">

                            <form action="CustomerServlet" method="POST">

                                <div class="row">
                                    
                                    <div class="col-md-6 col-md-offset-3">
                                        
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name" required>
                                        
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name" required>
                                        
                                        <input type="date" class="form-control" name="dob" placeholder="Date of Birth" >
                                        
                                        <input type="number"class="form-control" name="pNumber" placeholder="Phone Number" >
                                        
                                        <input type="text" class="form-control" name="address" placeholder="Home Address" >
                                        
                                        <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                                        
                                        <button type="submit" class="form-control btn btn-primary" value="submit">Create Account</button>
                                        
                                    </div>
                                    
                                </div>

                            </form>    
                            
                        </div>
                
                    </div>
           
                </div>
            
        </section>
      
        <!-- social media -->
        <section class="social-media">
            
            <div class="container">
                
                <div class="row">
                    
                    <div class="col-md-12">
                        
                        <div class="social-media-icons">
                            
                            <ul>
                                
                                <li><a href="www.facebook.com"><i class="fa fa-facebook icon-one"></i></a></li>
                                
                                <li><a href="www.twitter.com"><i class="fa fa-twitter icon-two"></i></a></li>
                                
                                <li><a href="www.youtube.com"><i class="fa fa-youtube-play icon-three"></i></a></li>
                                
                            </ul>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </section>
        
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
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        </div>
        </body>
</html>

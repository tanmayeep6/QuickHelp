<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage Vendor</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<style><%@include file="UserHomePage.css"%></style>
</head>

<body>

<div class="container ">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
           <a class="navbar-brand text-white" href="#"><h1>QuickHelp</h1></a> 
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                         <div class="dropdown">
							  <button class="dropbtn">Home</button>
							  <div class="dropdown-content">
							  
							  </div>
							</div>
                     </li>  
                      <li class="nav-item active">
                         <div class="dropdown">
							  <button class="dropbtn">Add Services</button>
							  <div class="dropdown-content">
							  
							  </div>
							</div>
                     </li>  
                     <li class="nav-item">
                         <div class="dropdown">
							  <button class="dropbtn">Contact</button>
							  <div class="dropdown-content pl-3">
							  	<p>
									Customer Care :<br>
									+420<br>
															  	
							  	 </p>
							  </div>
							</div>
                    </li>
                 	
                    
                    <li> 
                    		<div class="dropdown">
							  <button class="dropbtn">Profile</button>
							  <div class="dropdown-content">
							  	<a href="#">Update</a>
							   
								<form method="post" action="logout">
								    <input class="btn btn-light" type="submit" value="Logout"/>
								</form>
							
							  </div>
							</div>
                    
					</li>
           
               </ul>
               
            </div>
             
      
        </div>
      </nav> 
 </div>
</body>
</html>
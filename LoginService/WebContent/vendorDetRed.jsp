<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="adminHome.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="footerr.jsp" >
<title>Admin</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark text-center mb-5">
    <div class="container">
        <div class="navbar-brand "><h1>Admin</h1></div>
    </div>
</nav>

<div class=" text-center ">
	
    <div class="container">
        <h3>Vendor Details</h3>
     </div>
</div>

<div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"> </th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col" class="text-center">Email</th>
                            <th scope="col" class="text-right">Join-Date</th>
                            <th scope="col" class="text-right">Address</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="contact" items="${listContact}" >
                        <tr>
                            <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                            <td>${contact.vFirstName}</td>
                            <td>${contact.vLastName}</td>
                            <td>${contact.vemail}</td>
                            <td class="text-right">${contact.date}</td>
                            <td class="text-right"> ${contact.area} </td>
                        </tr>
                        </c:forEach> 
           			 </tbody>
                </table>
            </div>
        </div>
       
    </div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="adminHome.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="footerr.jsp" >
  <script >
  function redirect(elem){
      elem.setAttribute("action","userDetRed.jsp");
      elem.submit();
  }
  </script>   
<title>Homepage Admin</title>
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark text-center mb-5">
	    <div class="container">
	        <div class="navbar-brand "><h1>Admin</h1></div>
	    </div>
	</nav>
	<div style="display:flex; align-items:center; justify-content:center "  >
	  
	   <form action="userlist" method="get">
	    <button class="btn btn-primary mr-5 " type="submit" name="submit"> User</button>
	</form>
	
	
	<div style="display:flex; align-items:center; justify-content:center "  >
		<form action="vendorlist" method="get">
	    <button class="btn btn-primary mr-5 " type="submit" name="subVendor"> Vendor </button>
	</form>
		</div>	
	</div>
	
</body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Forgot Password</title>
  <meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container-fluid" >
	<div class="row" style="height:100vh;" >
		<div class="col-4 bg-dark text-light pt-5" ><h1><a href="Index.jsp">QuickHelp Application</a></h1>
		<br><p class= "pt-5" style="display: flex; align-item: center;">Search our services in just one go. Find the Places you want and you like.
		 To know more about this register with us.</p>	
		 <a href="Register.jsp" class="btn btn-info" role="button">Register</a>
		</div>
		<div class="col-8 " style="width: 340px ; margin: 50px auto;  display: flex; justify-content: center;" >
		
		<form action="forgot-action" method="post">
		<h2 class="text-center text-success ">Forgot Password</h2> 
			<div class="form-group nav">
			<label for="pwd">Email Id</label>
			<input type="text" class="form-control" id="pwd" name="email">
				</div>

			<button type="submit" class="btn btn-danger btn-lg" style="margin-top:20px;">Submit</button>
			<p style="color:blue;font-size:20px">${emailinvalid }</p>
			<p style="color:green;font-size:20px">${emailsuccess}</p>
			<h4 style="color:red;">${serveError}</h4>
			
	</form>	
	
	</div>
	</div>
</div>

</body>
</html>
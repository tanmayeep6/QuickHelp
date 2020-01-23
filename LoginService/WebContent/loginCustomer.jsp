
<!DOCTYPE html>
<html lang="en">
<head>
  <title>LOGIN</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="./resources/css/style.css">
</head>

<body>

<div class="container" style="margin-top: 1%;">
  <div class="row">
    <div class="col-sm-4"> </div>
		<div class="col-md-4">
  
		<h1 class="text-center" style="color:yellow;">SIGN IN</h1>
	<br/>

<div class="col-sm-12">

  

<br/>


 <div class="tab-content">
      
<form action="login-action" method="post">
	<div class="form-group nav">
   	<span style="color: red;font-size: 150%"> ${ loginreq } </span>
   	<span style="color: red;font-size: 100%"> ${ UserPass } </span>
     </div>

  <div class="form-group nav">
    <label for="UserName">Username</label> &nbsp <span style="color:red"> ${ usernameMissing } </span>
    <input type="text" class="form-control" id="userid" name="uname">
  </div>

  <div class="form-group nav">
    <label for="pwd">Password</label> &nbsp <span style="color:red"> ${ passMissing } </span>&nbsp<span style="color:red;font-size: 100%;font-weight: bold"> ${ wrongPass } </span>
    <input type="password" class="form-control" id="pwd" name="password">
  </div>

  <button type="submit" class="btn btn-default btn-lg" style="margin-top:20px">Submit</button>
  <button type="submit" class=" pull-right btn-link pass"><a href="forgot" style="color:yellow;font-size:25px">Forgot password</a></button>
	
</form>
   </div>
</div>
</div>
 
</div>
    
</div>

</body>
</html>

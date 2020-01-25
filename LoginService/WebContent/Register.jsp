
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JS  code-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!--avaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid" >
	<div class="row" style="height:100vh;" >
		<div class="col-4 bg-dark text-light pt-5" ><h1><a href="Index.jsp">QuickHelp Application</a></h1>
		<br><p class= "pt-5" style="display: flex; align-item: center;">We are glad to have you with us.</p>	
		 <h6>Thank you</h6>
		 <a href="Register.jsp" >Vendor Registration</a><br>
		 <a href="RegisterCustomer.jsp" >Customer Registration</a>
		</div>
		<div class="col-8 " style="width: 340px ; margin: 50px auto;  display: flex; justify-content: center;" >
			<form action="regis" onsubmit="return validation()" method="post">
			<h2 class="text-center">Vendor Registration</h2>
			<div class="form-group"><input class="form-control" type="text" id="v_first_name" name="vFirstName" placeholder="First Name"><div></div> </div>
			<div class="form-group"><input class="form-control" type="text" id="v_last_name" name="vLastName" placeholder="Last Name"><div></div> </div>
			<div class="form-group" >Gender :
			<select name = "vgender" id = "
			gender">
							<option value="">Select Occupation</option>
			               <option value = "male" >male</option>
			               <option value = "female">female</option>
			               <option value = "others">others</option>
			             </select>
			      </div>
			<!-- <div class="form-group"><input class="form-control" type="text" name="gender" placeholder="Gender"> </div>
			<div class="form-group"><input class="form-control" type="text" name="gender" placeholder="Gender"> </div>-->
			<div class="form-group"><input class="form-control" type="text" id="contact" name="vcontactNo" placeholder="Contact"><div></div> </div>
			<div class="form-group"><input class="form-control" type="email" id="mail" name="vemail" placeholder="abc@xyz.com"><div></div>  </div>
			<div class="form-group">
			                    <label>UserType:</label>
			                 
			                    <select class="text-center" name="usertype" id="usertype">
			                        <option value="">Select Services</option>
			                        <option value="flat">Flat</option>
			                        <option value="plumber">Plumber</option>
			                        <option value="laundry">Laundry</option>
			                       
			                      </select>
			                      <span id="usertypes" class="text-danger font-weight-bold"></span>
			 </div>
			 <div class="form-group"><input class="form-control" type="text" id="address" name="area" placeholder="Area"><div></div>  </div>
			<div class="form-group"><input class="form-control" type="text" id="occupation" name="occupation" placeholder="Services"><div></div>  </div>
			<!--<div class="form-group"><input class="form-control" type="text" name="UserName" placeholder="Username"> </div>-->
			<div class="form-group"><input class="form-control"  type="password" id="Password" name="Password" placeholder="Password"><div></div> </div>
			<div class="form-group"><input class="form-control"  type="password" id="c_Password" name="c_Password" placeholder="Confirm Password"><div></div> </div>
			<input class="btn btn-danger" type="submit" value="Registration">
			</form>

		</div>	
	</div>
</div>

<!-- Js validations -->
<script>
    function validation()
    {
        var first=document.getElementById('v_first_name').value;
        var last=document.getElementById('v_last_name').value;
        var pass=document.getElementById('Password').value;
        var conpass=document.getElementById('c_Password').value;
        var mobile=document.getElementById('contact').value;
        var email=document.getElementById('mail').value;
        var occ=document.getElementById('occupation').value;
        var add=document.getElementById('address').value;

        if(first==""){
            document.getElementById('v_first_name').parentElement.children[1].innerHTML ="**Please enter the first name";
            return false;
        }
        if(last==""){
            document.getElementById('v_last_name').parentElement.children[1].innerHTML ="**Please enter the last name";
            return false;
        }
        if(!isNaN(first)){
            document.getElementById('v_first_name').parentElement.children[1].innerHTML ="**only characters are allowed";
            return false;
        }
        if(!isNaN(last)){
            document.getElementById('v_last_name').parentElement.children[1].innerHTML ="**only characters are allowed";
            return false;
        }
        if(mobile==""){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(isNaN(mobile)){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**must be digits only";
            return false;
        }

        if(mobile.length!=10){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**only 10digit number";
            return false;
        }

        if(email==""){
            document.getElementById('mail').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(occ==""){
            document.getElementById('occupation').parentElement.children[1].innerHTML ="**Please enter occupation";
            return false;
        }
        if(add==""){
            document.getElementById('address').parentElement.children[1].innerHTML ="**Please enter the address";
            return false;
        }
        if(pass==""){
            document.getElementById('Password').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(pass.length<=5 || pass.length>=20){
            document.getElementById('Passwords').parentElement.children[1].innerHTML ="**password must be between 5 and 20";
            return false;
        }

        if(pass!=conpass){
            document.getElementById('c_Password').parentElement.children[1].innerHTML ="**password not matching";
            return false;
        }

        if(conpass==""){
            document.getElementById('c_Password').parentElement.children[1].innerHTML ="**required";
            return false;
        }

        if(mobile==""){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(isNaN(mobile)){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**must be digits only";
            return false;
        }

        if(mobile.length!=10){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**only 10digit number";
            return false;
        }

        if(email==""){
            document.getElementById('mail').parentElement.children[1].innerHTML ="**required";
            return false;
        }
     

    }
</script>
</body>
</html>
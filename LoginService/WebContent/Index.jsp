<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="myIndexPage.css" %></style>
<style><%@include file="UserHomePage.css"%></style>
<title>Insert title here</title>
</head>
<body >

<div class="bgimg  " >
	<nav class="navbar navbar-expand-md bg-dark navbar-dark ">
		<div class="container">
		<a href="" class="navbar-brand title ">QuickHelp &trade;</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#a">
				<span class="navbar-toggler-icon"></span>		
			</button>
		<div class="collapse navbar-collapse text-center" id="a" >
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a href="#about" class="nav-link text-white">About</a>
				</li>
				<li class="nav-item">
					<a href="#Services" class="nav-link text-white">Services</a>
				</li>
				<li class="nav-item">
					<a href="#Services" class="nav-link text-white">Network</a>
				</li>
				<li class="nav-item">
					<a href="#Services" class="nav-link text-white">Contact</a>
				</li>
				<li class="nav-item">
			?	<a href="#team" class="nav-link text-white">Team</a>
				</li>
				<li>   
					<div class="dropdown ">
							  <button class="dropbtn bg-success btnWidth">Register</button>
							  <div class="dropdown-content">
							  	<a href="Register.jsp">Customer</a>
							    <a href="RegisterCustomer.jsp">Vendor</a>
							  </div>
					</div>
					</li>
           
			</ul>
		</div>	
			
		</div>
		
	</nav>
	
	<div  style="width: 340px ; margin: 50px auto;  display: flex; justify-content: center; " >
		<form action="abc" method="post">
				<h2 class="text-center text-primary ">Sign in</h2> 
				<p class="text-danger" >${msg}</p>
				<div class="form-group" style="width:40vh;" ><input class="form-control" type="text" name="email" placeholder="Email"> </div>
				<div class="form-group" style="width:40vh;" ><input	class="form-control"  type="password" name="password" placeholder="Password"></div> 
	
			<div class="custom-control custom-checkbox">
   				 <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
  				  <label class="custom-control-label pb-2" for="defaultUnchecked">Remember me</label>
			</div>
			
				<input class="btn btn-danger mr-5 " type="submit" value="Login">
					<a href="forgot">Forgot password?</a>
			</form>
			</div>
	
</div>	

<section id="Services" class="container ourservices text-center heights">
		<h1>Connect with Us</h1>
		
	
			<div class="row rowsetting">
				<div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
					<div class="pt-3 d-block m-auto ">
						<i class="fa fa-question fa-3x imgsetting bg-warning"></i>
					
					</div>
					<h3 class="mt-4"> Services </h3>
					<p>We provide our customers with the information about the nearest Electricians, Chemists, and Laundry etc. </p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto ">
					<div class=" d-block m-auto">
						<i class="fa fa-phone fa-3x imgsetting bg-warning"></i>
					
					</div>
					<h3 class="mt-4"> Contact Us</h3>
					<p> You can get in touch with our Executives by calling our Helpline Number : +420</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto ">
					<div class=" d-block m-auto">
						<i class="fa fa-globe fa-3x imgsetting bg-warning"></i>
					
					</div>
					<h3 class="mt-4"> Network</h3>
					<p> Our Network is Wide spread and we provide services all across Mumbai</p>
				</div>
				
			</div>
	</section>
	<section id="about" class="container ourservices text-center heights">
		
		<div class="pt-3 d-block m-auto ">
						<i class="fa fa-question fa-3x imgsetting bg-warning"></i>
					
					</div>
		<h1>About Us</h1>
		
	
				<div >
					
					<p>Nowadays finding confined area, people are unaware of is a very hectic and tedious task.<br>
					 QuickHelp is a web application which is specifically developed for the people who have businesses to run or for newly shifted customers who want to get services for their daily needs in an unknown place.<br>
					  It allows the customers to get the information about nearby points viz. Electricians, Chemists, and Laundry etc.<br>
					   It also enable the users to search for PG, Rented Apartments, Hotels or other services.<br>
					    Our peculiar System allows the people to get all the information swiftly, reliably, comprehensively and all the information is free of cost. </p>
				</div>
	</section>
	
	<section id="team" class=" OurTeam heights">
		<div class="container text-center">
			<h1 > Our Amazing Team</h1>
		
			<div>
			<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto pt-3">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
							<figcaption>
								<h4>Tanmayee Pawar</h4>
								<p class="figure-caption">Project Lead</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			</div>
			<div class="row pt-5">
				<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
							<figcaption>
								<h4>Gangey Mishra</h4>
								<p class="figure-caption">Bhaalu</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			
				<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
							<figcaption>
								<h4>Akshay Bhosale</h4>
								<p class="figure-caption">Pradnya</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			
				<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
								<figcaption>
								<h4>Akash Suste Patil</h4>
								<p class="figure-caption">Sohan ka Khaas</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			
			</div>
			<div class="row pt-5">
				<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
								<figcaption>
								<h4>Vishwajeet</h4>
								<p class="figure-caption">DJ</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			
				<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
								<figcaption>
								<h4>Sandeep Nishad</h4>
								<p class="figure-caption">Ganja</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			
				<div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
					<figure class="figure imgdimensions ">
						<img class="figure-img rounded-circle imgdimensions" src="https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
									<figcaption>
								<h4>Akshay Gaikwad</h4>
								<p class="figure-caption">Upcoming Actor</p>
							</figcaption>
					
					</figure>
				
				
				</div>
			
			</div>
		
		</div >
		<div class=" footerheight bg-dark mt-5 text-white">
		<div>
			<a href="#" class="pr-5 text-white d-flex align-items-center">Back to the Top</a>
		</div>
		<div>
			<h5 class="pr-4 d-flex align-items-center justify-content-end">Designed by Tanmayee & Team</h5>
		</div>
		</div>
	</section>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Novena- Login & SignUp</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico" />

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="resources/plugins/icofont/icofont.min.css">
  <!-- Slick Slider  CSS -->
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick-theme.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/resources/css/all.min.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="resources/css/style.css">
  <link rel="stylesheet" href="resources/css/signForms.css">

</head>

<body id="top">

<header>
	<div class="header-top-bar">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<ul class="top-bar-info list-inline-item pl-0 mb-0">
						<li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>elitehealth@pvtltd.lk</a></li>
						<li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address Parakumba Street,Kurunegala </li>
					</ul>
				</div>
				<div class="col-lg-6">
					<div class="text-lg-right top-right-bar mt-2 mt-lg-0">
						<a href="tel:+23-345-67890" >
							<span>Call Now : </span>
							<span class="h4">+94 37 2222262</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navigation" id="navbar">
		<div class="container">
		 	 <a class="navbar-brand" href="index.html">
			  	<img src="resources/images/logo.png" alt="" class="img-fluid" width="200px">
			  </a>

		  	<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarmain" aria-controls="navbarmain" aria-expanded="false" aria-label="Toggle navigation">
			<span class="icofont-navigation-menu"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse" id="navbarmain">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a class="nav-link" href="index.jsp">Home</a>
			  </li>
				<li class="nav-item"><a class="nav-link" href="Pharmacy.jsp">Pharmacy</a></li>
				<li class="nav-item"><a class="nav-link" href="userBlog.jsp">Blog</a></li>
				<li class="nav-item"><a class="nav-link" href="staff.jsp">Doctors</a></li>
			  <li class="nav-item"><a class="nav-link" href="Ambulance.jsp?userId=${pat.regUserId}">Ambulance Service</a></li>
			  <li class="nav-item"><a class="nav-link" href="userProfile.jsp">Profile</a></li>
			  <li class="nav-item"><a class="nav-link" href="userProfile.jsp">Ambulance Driver Profile</a></li>
			</ul>
		  </div>
		</div>
	</nav>
</header>
	


<section class="page-title">
  <div class="form-body" id="form-body">
		<div class="form-container sign-up">
				<form name="signUpform" action="RegisteringUserServlet" method="post" enctype="multipart/form-data" onsubmit="return validateSignUpForm()">
						<h1>Create Account</h1>
						
						<input type="text" placeholder="your name" name="name" id="name">
					    <p id="errorName" class="error"></p>
					    
					    <input type="text" placeholder="phone number" name="tele" id="tel">
					    <p id="telehoneError" class="error"></p>
					    
					    <input type="text" placeholder="address" name="add" id="address">
					    <p id="addressError" class="error"></p>
					    
					    <input type="email" placeholder="email" name="email">
					    <p id="emailError" class="error"></p>
					    
					    <input type="date" placeholder="date of birth" name="dob">
					    <p id="dobError" class="error"></p>
					    
					    <input type="text" placeholder="username" name="uname" id="username">
					    <p id="userNameError" class="error"></p>
					    
					    <input type="password" placeholder="password" name="pass" id="password">
					    <p id="passwordError" class="error"></p>
					    
						<input type="file" name="propic" multiple="true" placeholder="enter a profile picture here">
						<button type="submit">Sign Up</button>
				</form>
		</div>
		<div class="form-container sign-in">
				<form action="RegisteredUserLoginServlet" method="post">
						<h1>Sign In</h1>
						<input type="text" placeholder="username" name="uname">
						<input type="password" placeholder="Password" name="password">
						<a href="#">Forget Your Password?</a>
						<button>Sign In</button>
				</form>
		</div>
		<div class="toggle-container">
				<div class="toggle">
						<div class="toggle-panel toggle-left">
								<h1 class="title">Welcome Back!</h1>
								<p>Enter your personal details to use all of site features</p>
								<button class="hidden" id="login">Sign In</button>
						</div>
						<div class="toggle-panel toggle-right">
								<h1 class="title">Hello, Friend!</h1>
								<p>Register with your personal details to use all of site features</p>
								<button class="hidden" id="register">Sign Up</button>
						</div>
				</div>
		</div>
</div>

<script src="script.js"></script>
</section>

<!-- footer Start -->
<footer class="footer section gray-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 mr-auto col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<div class="logo mb-4">
						<img src="resources/images/logo.png" alt="" class="img-fluid">
					</div>
					<p>Tempora dolorem voluptatum nam vero assumenda voluptate, facilis ad eos obcaecati tenetur veritatis eveniet distinctio possimus.</p>

					<ul class="list-inline footer-socials mt-4">
						<li class="list-inline-item"><a href="https://www.facebook.com/themefisher"><i class="icofont-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://twitter.com/themefisher"><i class="icofont-twitter"></i></a></li>
						<li class="list-inline-item"><a href="https://www.pinterest.com/themefisher/"><i class="icofont-linkedin"></i></a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Department</h4>
					<div class="divider mb-4"></div>

					<ul class="list-unstyled footer-menu lh-35">
						<li><a href="staff.jsp">Staff </a></li>
						<li><a href="Ambulance.jsp">Emergency Services</a></li>
						<li><a href="Pharmacy.jsp">Pharmacy</a></li>
						<li><a href="userBlog.jsp">Blog</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Support</h4>
					<div class="divider mb-4"></div>

					<ul class="list-unstyled footer-menu lh-35">
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contactUsInsert.jsp">Contact Us</a></li>
						<li><a href="Ambulance.jsp">Patient Transport Appointment</a></li>
						<li><a href="insertDocterAppointment.jsp">Doctor Appointment</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget widget-contact mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Get in Touch</h4>
					<div class="divider mb-4"></div>

					<div class="footer-contact-block mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-email mr-3"></i>
							<span class="h6 mb-0">Support Available for 24/7</span>
						</div>
						<h4 class="mt-2"><a href="tel:+37 2222262">elitehealth@pvtltd.lk</a></h4>
					</div>

					<div class="footer-contact-block">
						<div class="icon d-flex align-items-center">
							<i class="icofont-support mr-3"></i>
							<span class="h6 mb-0">Mon to Fri : 08:30 - 18:00</span>
						</div>
						<h4 class="mt-2"><a href="tel:+23-345-67890">+94 37 2222262</a></h4>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-btm py-4 mt-5">
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-6">
					<div class="copyright">
						&copy; Copyright Reserved to <span class="text-color">ELITE HEALTH PVT.LTD</span>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="subscribe-form text-lg-right mt-5 mt-lg-0">
						<form action="#" class="subscribe">
							<input type="text" class="form-control" placeholder="Your Email address">
							<a href="#" class="btn btn-main-2 btn-round-full">Subscribe</a>
						</form>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					<a class="backtop js-scroll-trigger" href="#top">
						<i class="icofont-long-arrow-up"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</footer>
   

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="resources/plugins/jquery/jquery.js"></script>
    <!-- Bootstrap 4.3.2 -->
    <script src="resources/plugins/bootstrap/resources/js/popper.js"></script>
    <script src="resources/plugins/bootstrap/resources/js/bootstrap.min.js"></script>
    <script src="resources/plugins/counterup/jquery.easing.js"></script>
    <!-- Slick Slider -->
    <script src="resources/plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="resources/plugins/counterup/jquery.waypoints.min.js"></script>
    
    <script src="resources/plugins/shuffle/shuffle.min.js"></script>
    <script src="resources/plugins/counterup/jquery.counterup.min.js"></script>
    <!-- Google Map -->
    <script src="resources/plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    
    
    <script src="resources/js/script.js"></script>
    <script src="resources/js/contact.js"></script>
	<script src="resources/js/signforms.js"></script>

  </body>
  </html>
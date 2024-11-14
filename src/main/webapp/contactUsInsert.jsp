<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
  <!-- Meta Tags -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor, business, company, agency, modern, bootstrap4, tech, software">
  <meta name="author" content="themefisher.com">
  <title>Novena - Health & Care Medical Template</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico" />

  <!-- CSS Stylesheets -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/plugins/icofont/icofont.min.css">
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick-theme.css">
  <link rel="stylesheet" href="resources/css/style.css"> <!-- Main Stylesheet -->
  
  
<script src="resources/js/inputCheck.js"></script>
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

  <!-- Contact Form Section -->
  <section class="contact-form-wrap section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="section-title text-center">
            <h2 class="text-md mb-2">Contact us</h2>
            <div class="divider mx-auto my-4"></div>
            <p class="mb-5"> Your feedback is valuable to us, and we strive to improve continuously. Thank you for your patience and understanding as we enhance our services.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <form name="contactInsert" action="contactInsert" method="post" onsubmit="return validateFormContact()">
            <!-- Success Message -->
            <div class="row">
              <div class="col-12">
                <div class="alert alert-success contact__msg" style="display: none" role="alert">Your message was sent successfully.</div>
              </div>
            </div>
            <!-- Contact Form Fields -->
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <input name="name" id="name" type="text" class="form-control" placeholder="Your Full Name">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <input name="email" id="email" type="email" class="form-control" placeholder="Your Email Address">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <select name="topic" id="topic" width="50px" class="form-control">
                    <option value="General Inquiry">General Inquiry</option>
                    <option value="Feedback">Feedback</option>
                    <option value="Complaint">Complaint</option>
                    <option value="Appointment Request">Appointment Request</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <input name="phone" id="phone" type="text" class="form-control" placeholder="Your Phone Number">
                </div>
              </div>
            </div>
            <div class="form-group-2 mb-4">
              <textarea name="message" id="message" class="form-control" rows="8" placeholder="Your Message"></textarea>
            </div>
            <!-- Submit Button -->
            <div class="text-center">
              <input class="btn btn-main btn-round-full" name="submit" type="submit"  onClick="return validateFormContact()" value="Send Message">
            </div>
          </form>
        </div>
      </div>
    </div>
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
</footer>>

  <!-- JavaScript Files -->
  <script src="resources/plugins/jquery/jquery.js"></script>
  <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/plugins/slick-carousel/slick/slick.min.js"></script>
  <script src="resources/plugins/shuffle/shuffle.min.js"></script>
  <script src="resources/js/script.js"></script>
</body>
</html>

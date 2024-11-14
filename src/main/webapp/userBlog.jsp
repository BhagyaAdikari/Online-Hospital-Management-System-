<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hms";
String userid = "root";
String password = "k1y2l3ie";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl + database, userid, password);
System.out.println("Database Conneection is success!!");
try{
statement = connection.createStatement();
String sql = "select * from blog";
resultSet = statement.executeQuery(sql);
%>


<!DOCTYPE html>
<html lang="zxx">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Novena- Health & Care Medical template</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico" />

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="resources/plugins/icofont/icofont.min.css">
  <!-- Slick Slider  CSS -->
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="resources/css/style.css">

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

<section class="page-title bg-1">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Our blog</span>
          <h1 class="text-capitalize mb-5 text-lg">Blog articles</h1>

          <!-- <ul class="list-inline breadcumb-nav">
            <li class="list-inline-item"><a href="index.html" class="text-white">Home</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">Our blog</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
</section>


<!--items-->
<section class="section service-2">
	<div class="container">
		<div class="row">
			<%
				while (resultSet.next()) {
			%>
			<!--start iteration-->
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="service-block mb-5">
					<img src="resources/images/blog_new/<%=resultSet.getString("img")%>" alt="" class="img-fluid" width="500px">
					<div class="content">
						<h3 class="mt-4 mb-2 title-color"><%=resultSet.getString("name")%></h3>
						
						Author Name : <b><%=resultSet.getString("author")%></b></p>
					</div>
					<c:url value="singleBlog.jsp" var="cusupdate">
						<c:param name="idblog" value='<%=resultSet.getString("idblog")%>' />
						<c:param name="name" value='<%=resultSet.getString("name")%>' />
						<c:param name="content" value='<%=resultSet.getString("content")%>' />
						<c:param name="author" value='<%=resultSet.getString("author")%>' />
						<c:param name="img" value='<%=resultSet.getString("img")%>' />
						<c:param name="editorName" value='<%=resultSet.getString("editorName")%>' />
						<c:param name="staffID" value='<%=resultSet.getString("staffID")%>' />
					</c:url>
					<a href="${cusupdate}">
						<input type="button" name="update" value="Read Blog">
					</a>
				</div>
			</div>
			<%
				}
}catch(Exception e){
	e.printStackTrace();
}
			%>
			<!--end of the iteration-->
			<a href="userBlogInsert.jsp" class="btn btn-main-2 btn-round-full">Share your blog<i class="icofont-simple-right  ml-2"></i></a>
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
</footer>

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="resources/plugins/jquery/jquery.js"></script>
    <!-- Bootstrap 4.3.2 -->
    <script src="resources/plugins/bootstrap/js/popper.js"></script>
    <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
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





	

  

  </body>
  </html>
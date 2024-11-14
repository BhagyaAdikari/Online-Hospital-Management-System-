<%@page import="it23171992_dataBaseConnection.HMSDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="it23171992_com.users.RegisteredPatient" %>
    <%@ page import="it23171992_com.users.Users" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import="java.util.List" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
    
<%
    String loggedInUser = (String) session.getAttribute("driver");
    System.out.println("Session user: " + loggedInUser);
    if (loggedInUser == null) {
        response.sendRedirect("driverlogin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Novena- Ambulance Driver Profile</title>

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
  
  <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
	
	<link href="resources/css/driverProfile.css" rel="stylesheet">
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
          <span class="text-white">Ambulance Driver Profile</span>
          <h1 class="text-capitalize mb-5 text-lg">Ambulance Driver Appointments</h1>
		  
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section service-2">
	<div class="" >
		<div class="container-driver">
			<c:forEach var="driver" items="${ambDriver }">
	        <div class="driver-info">
			    <h2 class="mb-5">Driver Details</h2>
			    <div class="row align-items-center justify-content-center text-center mb-5">
			        <div class="col-md-3">
			            <img width="48" height="48" src="https://img.icons8.com/color/48/collaborator-male--v1.png" alt="collaborator-male--v1"/>
			            <h3>${driver.name}</h3>
			        </div>
			        <div class="col-md-3">
			            <img width="48" height="48" src="https://img.icons8.com/color/48/checked-identification-documents.png" alt="checked-identification-documents"/>
			            <h3>${driver.driverId}</h3>
			        </div>
			        <div class="col-md-3">
			            <img width="48" height="48" src="https://img.icons8.com/parakeet/48/ringing-phone.png" alt="ringing-phone"/>
			            <h3>${driver.telephoneNumber}</h3>
			        </div>
			        <div class="col-md-3">
			            <a href="DriverLogOutServlet">
			                <img width="50" height="50" src="https://img.icons8.com/external-anggara-flat-anggara-putra/50/external-logout-ecommerce-anggara-flat-anggara-putra.png" alt="external-logout-ecommerce-anggara-flat-anggara-putra"/>
			                <h3>Log Out</h3>
			            </a>
			        </div>
			    </div>
			</div>
	        <div>
	
	          <!-- Toggle Button -->
	          <button class="toggle-button" onclick="toggleForm()">Toggle To Calculate Travel Fee</button>
	          
	          <!-- Input Form for Distance -->
	          <div id="formContainer" class="form-container">
	              <form action="TrvelFeeCalculatorServlet" method="post">
	              	  <input type="hidden" name="uname" value="${driver.email }">
	              	  <input type="hidden" name="password" value="${driver.password }">
	                  <label for="distance">Enter Distance (km):</label>
	                  <input type="number" id="distance" name="distance" required>
	                  <button type="submit">Calculate Fee</button>
	              </form>
	          </div>
	
	          <!-- Display the Calculated Fee if Available -->
	          <c:if test="${not empty totalFee}">
	              <h3>Last Travel Fee Calculation</h3>
	              <p>Distance: ${Distance} km</p>
	              <p>Total Fee: Rs.${totalFee}</p>
	          </c:if>
	
	        </div>
	
	        <div class="appointment-list">
	            <h2 class="appointment">Available Appointments</h2>
	            <table>
	                <thead>
	      
	                    <tr>
	                        <th>Appointment ID</th>
	                        <th>Requester Name</th>
	                        <th>Pickup Location</th>
	                        <th>Drop-off Location</th>
	                        <th>Time/Date</th>
	                        <th>Status</th>
	                        <th>Actions</th>
	                    </tr>
	                    
	                </thead>
	                <tbody>
	                	<c:forEach var="appDetails" items="${ambAppointments }">  
							<c:choose>
								<c:when test="${appDetails.appointmentStatus == 'ASSIGNED' || appDetails.appointmentStatus == 'COMPLETED' }">
									<tr>
	                    	   
				                        <td>${appDetails.appointmentId }</td>
				                        <td>${appDetails.applicantName }</td>
				                        <td>${appDetails.patientLocation }</td>
				                        <td>${appDetails.droppedLocation }</td>
				                        <td>
				                        	<p>${appDetails.appointDate }</p>
				                        	<p>${appDetails.appointTime }</p>
				                        </td>
				                        <td>
				
				                            <!-- Flex Container for Status Forms -->
				                            <div>
				                              <!-- Form for Completion -->
				                              <div>
				                                <h4 class="completionStatus">${appDetails.appointmentStatus }</h4>
				                              </div>
				                            </div>
				
				                        </td>
				                        
				                        <td>
				   							 <c:choose>
				   							 	<c:when test="${appDetails.appointmentStatus != 'COMPLETED' && appDetails.appointmentStatus != 'Pending'}">
				   							 		 <div style="display:flex;margin:10px;align-items:center;text-align:center;justify-content:center;">
						                                <form action="CancelAmbulanceAppointmentServlet" method="post" style=" align-items: center;">
						                                  <input type="hidden" name="uname" value="${driver.email }">
						              	  				  <input type="hidden" name="password" value="${driver.password }">
						                                  <input type="hidden" name="appointmentId" value="${appDetails.appointmentId }">
						                                  <input type="hidden" name="status" value="Pending">
						                                  <button type="submit">Not Able</button>
						                              	</form>
						                              </div>                     
						                        	  <!-- Form for Manual Travel Fee Entry -->
						                              <div style="display:flex;margin:auto;align-items:center;text-align:center;justify-content:center;">
						                                <form action="CompleteAmbulanceAppointment" method="post" style=" align-items: center;">
						                                  <input type="hidden" name="uname" value="${driver.email }">
						              	  				  <input type="hidden" name="password" value="${driver.password }">
						                                  <input type="hidden" name="appointmentId" value="${appDetails.appointmentId }">
						                                  <input type="hidden" name="status" value="COMPLETED">
						                                  <input type="number" name="travelFee" value="${totalFee}" placeholder="Enter Fee" step="0.01" required style="width: 100px; margin-right: 5px;">
						                                  <button type="submit">Complete</button>
						                              	</form>
						                              </div>
				   							 	</c:when>
				   							 </c:choose>
				                        </td>
				                        
				                    </tr>
								</c:when>
							</c:choose>
	                    </c:forEach>
	                    <!-- Add more appointment rows as needed -->
	                </tbody>
	            </table>
	        </div>
	        </c:forEach>
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
    
    <script>
      document.getElementById('deleteForm').addEventListener('submit', function (event) {
	        
	        const confirmation = confirm("Are you sure to delete this file ?");
	        if (confirmation) {
	          alert('Yes');
	        } else {
	          alert('Deletion canceled');
	        }
      });
      
      function toggleForm() {
          const formContainer = document.getElementById("formContainer");
          if (formContainer.style.display === "none") {
              formContainer.style.display = "block";
          } else {
              formContainer.style.display = "none";
          }
      }
    </script>

    
    <!-- Main jQuery -->
    <script src="resources/plugins//jquery/jquery.js"></script>
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

  </body>
  </html>
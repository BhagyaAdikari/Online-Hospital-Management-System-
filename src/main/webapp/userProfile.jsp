<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="it23171992_com.users.RegisteredPatient" %>
    <%@ page import="it23171992_com.users.Users" %>
    <%@ page import="it23171992_com.users.Users" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import="java.util.List" %>
    <%@ page import="javax.servlet.http.HttpSession" %>

<%
    String loggedInUser = (String) session.getAttribute("user");
    System.out.println("Session user: " + loggedInUser);
    if (loggedInUser == null) {
        response.sendRedirect("loginSignUp.jsp");
        return;
    }
%>

   
<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Novena- User Profile</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico" />

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="resources/plugins/icofont/icofont.min.css">
  <!-- Slick Slider  CSS -->
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick-carousel/slick/slick-theme.css">
  <link rel="stylesheet" href="resources/css/userProfile.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="resources/css/style.css">
  
  <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
	
	<style>
		
		
		
		
	</style>
	
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
			  <li class="nav-item"><a class="nav-link" href="AmbulanceDriverProfile.jsp">Ambulance Driver Profile</a></li>
			</ul>
		  </div>
		</div>
	</nav>
</header>

<c:forEach var="pat" items="${patientDetails}">
<section class="page-title bg-1">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">User Profile</span>
          <h1 class="text-capitalize mb-5 text-lg">${pat.name }</h1>

          <!-- <ul class="list-inline breadcumb-nav">
            <li class="list-inline-item"><a href="index.html" class="text-white">Home</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">All Department</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section service-2">
	<div class="container" >
		<div class="container light-style flex-grow-1 container-p-y" >
			<div class="card overflow-hidden" style="border-color:#c1edf5;">
					<div class="row no-gutters row-bordered row-border-light">
							<div class="col-md-3 pt-0 h-100">
								<div class="list-group list-group-flush account-settings-links d-flex">
								    <a class="list-group-item list-group-item-action active side-nav" data-toggle="list" href="#account-general"><img width="50" height="50" src="https://img.icons8.com/color/48/apply-skin-type-7.png" alt="apply-skin-type-7"/>General Information</a>
								    <a class="list-group-item list-group-item-action side-nav" data-toggle="list" href="#account-change-password"><img width="50" height="50" src="https://img.icons8.com/color/48/password.png" alt="password"/>Change Password</a>
								    <a class="list-group-item list-group-item-action side-nav" data-toggle="list" href="#account-social-links"><img width="50" height="50" src="https://img.icons8.com/external-vectorslab-flat-vectorslab/53/external-Doctor-Appointment-medical-and-health-care-vectorslab-flat-vectorslab.png" alt="external-Doctor-Appointment-medical-and-health-care-vectorslab-flat-vectorslab"/>Current Appointment</a>
								    <a class="list-group-item list-group-item-action side-nav" data-toggle="list" href="#account-connections"><img width="50" height="50" src="https://img.icons8.com/nolan/64/medical-history.png" alt="medical-history"/>Medication Reports</a>
								    
								    <form action="DeleteRegisteredUserServlet" method="post">
								        <input type="hidden" name="userId" value="${pat.regUserId}">
								        <button type="submit" class="list-group-item list-group-item-action side-nav" style="background: none; border: none; color: inherit; text-align: left;">
								            <img width="50" height="50" src="https://img.icons8.com/fluency/48/delete-forever.png" alt="delete-forever"/>Delete My Account
								        </button>
								    </form>
								    
								    <form action="userLogoutServlet" method="get">
								        <button type="submit" class="list-group-item list-group-item-action side-nav" style="background: none; border: none; color: inherit; text-align: left;">
								            <img width="50" height="50" src="https://img.icons8.com/external-anggara-flat-anggara-putra/50/external-logout-ecommerce-anggara-flat-anggara-putra.png" alt="external-logout-ecommerce-anggara-flat-anggara-putra"/>Log Out
								        </button>
								    </form>
								</div>

							</div>
							<div class="col-md-9">
									<div class="tab-content">
											<div class="tab-pane fade active show" id="account-general">
												<!--starts of the general information part-->
												<form action="updateRegisteredUserDetailsServlet" method="post" enctype="multipart/form-data">
													<input type="hidden" name="userId" value="${pat.regUserId }">
													<div class="card-body media d-flex justify-content-center align-items-center">
															<label class="btn p-0" style="border: none; cursor: pointer; position: relative;">
														        <img src="resources/images/profilePictures/${pat.profilePicture != null ? pat.profilePicture : 'default-profile.png'}" 
														             alt="Profile Picture" 
														             class="d-block ui-w-30" 
														             width="200" height="200" 
														             style="border-radius: 0; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border: 2px solid #ccc; object-fit: cover;">
														        <input type="file" class="account-settings-fileinput" name="updatePic" style="display: none;">
														        
														        <!-- Edit Tag (Overlay) -->
														        <span style="position: absolute; bottom: 0; left: 0; width: 100%; text-align: center; background: rgba(0, 0, 0, 0.6); color: white; padding: 5px 0; font-size: 12px;">
														            Edit
														        </span>
														    </label>
															
													</div>
													<hr class="border-light m-0">
													<div class="card-body">
													    <div class="row">
													        <div class="col-md-6">
													            <div class="form-group">
													                <label class="form-label">Username</label>
													                <input type="text" class="form-control mb-1" value="${pat.userName}" name="uname">
													            </div>
													        </div>
													        <div class="col-md-6">
													            <div class="form-group">
													                <label class="form-label">Name</label>
													                <input type="text" class="form-control" value="${pat.name}" name="name">
													            </div>
													        </div>
													    </div>
													    <div class="row">
													        <div class="col-md-6">
													            <div class="form-group">
													                <label class="form-label">E-mail</label>
													                <input type="text" class="form-control mb-1" value="${pat.email}" name="mail">
													            </div>
													        </div>
													        <div class="col-md-6">
													            <div class="form-group">
													                <label class="form-label">Address</label>
													                <input type="text" class="form-control mb-1" value="${pat.address}" name="address">
													            </div>
													        </div>
													    </div>
													    <div class="row">
													        <div class="col-md-6">
													            <div class="form-group">
													                <label class="form-label">Birthday</label>
													                <input type="text" class="form-control" value="${pat.dob}" readonly>
													            </div>
													        </div>
													        <div class="col-md-6">
													            <div class="form-group">
													                <label class="form-label">Phone</label>
													                <input type="text" class="form-control" value="${pat.telephoneNumber}" name="tel">
													            </div>
													        </div>
													    </div>
													</div>

													<div class="text-right mt-3 mb-lg-5 text-center">
														<button type="submit" class="save-btn">Save changes</button>&nbsp;
													</div>
												</form>
											</div>


											<div class="tab-pane fade" id="account-change-password">
												<form action="ChangePasswordRegisteredUser" method="post">
													<input type="hidden" name="userId" value="${pat.regUserId }">
													<div class="card-body pb-2">
															<div class="form-group">
																	<label class="form-label">Current Password</label>
																	<input type="password" class="form-control" name="oldPass">
															</div>
															<div class="form-group">
																	<label class="form-label">New password</label>
																	<input type="password" class="form-control" name="newPass">
															</div>
															<div class="form-group">
																	<label class="form-label">Repeat new password</label>
																	<input type="password" class="form-control">
															</div>
													</div>
												
												<div class="text-right mt-3 mb-lg-5 text-center">
													<button type="submit" class="save-btn" >Save changes</button>&nbsp;
												</div>
												</form>
											</div>
											<!--end of the general information part-->

											<!--starts of reg user appointment details-->
											<div class="tab-pane fade" id="account-social-links">
												   <div class="card-body">
											        <h5 class="font-weight-bold mb-3">Appointment Details</h5>
											        <div class="table-responsive">
											            <table class="table table-bordered table-hover">
											                <thead class="thead-dark">
											                    <tr>
											                        <th scope="col">Date</th>
											                        <th scope="col">Time</th>
											                        <th scope="col">Doctor</th>
											                        <th scope="col">Status</th>
											                    </tr>
											                </thead>
											                <tbody>
											                    <tr>
											                        <td>2024-10-05</td>
											                        <td>10:00 AM</td>
											                        <td>Dr. John Smith</td>
											                        <td><span class="badge bg-success">Confirmed</span></td>
											                    </tr>
											                    <tr>
											                        <td>2024-10-10</td>
											                        <td>2:30 PM</td>
											                        <td>Dr. Jane Doe</td>
											                        <td><span class="badge bg-warning">Pending</span></td>
											                    </tr>
											                    <!-- Add more rows as needed -->
											                </tbody>
											            </table>
											        </div>
											    </div>
											</div>
											<!--end of the reg user appointments details-->


											<!--starts medication reports section-->
											<div class="tab-pane fade" id="account-connections">

											    <hr class="border-light m-0">
											
											    <!-- File List Display -->
											    <div class="card-body">
											        <h5 class="font-weight-bold mb-3">Uploaded Medication Reports</h5>
											        <div class="table-responsive">
											            <table class="table table-bordered table-hover">
											                <thead class="thead-dark">
											                    <tr>
											                        <th scope="col">Report Name</th>
											                        <th scope="col">File Link</th>
											                    </tr>
											                </thead>
											                <tbody>
											                
											                <c:forEach var="report" items="${medReportsDetils }">
											                    <tr>
											                        <td>${report.remark }</td>
											                        <td><a href="resources/images/regUserMedicationReports/${report.fileName }" target="_blank"><i class="fas fa-file-alt"></i> View File</a></td>
											                        
											                    </tr>
											                    <!-- Add more rows as needed -->
											                </c:forEach>
											                
											                </tbody>
											            </table>
											        </div>
											    </div>
											</div>
											<!--end of medication reports section-->

											</div>
									</div>
							</div>
					</div>
			</div>
	</div>
	</div>
</section>

</c:forEach>

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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



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

<%

String id = request.getParameter("id");

String doctername = request.getParameter("doctername");
String specilization = request.getParameter("specilization");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String date = request.getParameter("date");
String time = request.getParameter("time");
String message = request.getParameter("message");


%>



<header>
	<div class="header-top-bar">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<ul class="top-bar-info list-inline-item pl-0 mb-0">
						<li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>support@novena.com</a></li>
						<li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address Ta-134/A, New York, USA </li>
					</ul>
				</div>
				<div class="col-lg-6">
					<div class="text-lg-right top-right-bar mt-2 mt-lg-0">
						<a href="tel:+23-345-67890" >
							<span>Call Now : </span>
							<span class="h4">823-4565-13456</span>
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
				<a class="nav-link" href="index.html">Home</a>
			  </li>
			   <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
			    <li class="nav-item"><a class="nav-link" href="service.html">Services</a></li>

			    <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="department.html" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Department <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown02">
						<li><a class="dropdown-item" href="department.html">Departments</a></li>
						<li><a class="dropdown-item" href="department-single.html">Department Single</a></li>
					</ul>
			  	</li>

			  	<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="doctor.html" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Doctors <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown03">
						<li><a class="dropdown-item" href="doctor.html">Doctors</a></li>
						<li><a class="dropdown-item" href="doctor-single.html">Doctor Single</a></li>
						<li><a class="dropdown-item" href="appoinment.html">Appoinment</a></li>
					</ul>
			  	</li>

			   <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="blog-sidebar.html" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown05">
						<li><a class="dropdown-item" href="blog-sidebar.html">Blog with Sidebar</a></li>

						<li><a class="dropdown-item" href="blog-single.html">Blog Single</a></li>
					</ul>
			  	</li>
			   <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
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
          <span class="text-white">Book your Seat</span>
          <h1 class="text-capitalize mb-5 text-lg">Appoinment</h1>

          <!-- <ul class="list-inline breadcumb-nav">
            <li class="list-inline-item"><a href="index.html" class="text-white">Home</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">Book your Seat</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
</section>

<section class="appoinment section">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
          <div class="mt-3">
            <div class="feature-icon mb-3">
              <i class="icofont-support text-lg"></i>
            </div>
             <span class="h3">Call for an Emergency Service!</span>
              <h2 class="text-color mt-3">+84 789 1256 </h2>
          </div>
      </div>


















<div class="col-lg-8">
           <div class="appoinment-wrap mt-5 mt-lg-0 pl-lg-5">
            <h2 class="mb-2 title-color">Update an appoinment</h2>
            <p class="mb-4">Mollitia dicta commodi est recusandae iste, natus eum asperiores corrupti qui velit . Iste dolorum atque similique praesentium soluta.</p>
            
                    <form action="UpdateAppointmentServlet" method="post">    
               
               
               <input type="text" name="id" value="<%= id %>" hidden  >
               
                    <div class="row">
                         <div class="col-lg-6">
                            <div class="form-group">
 
								
								 <input type="text" name="doctername" value="<%= doctername %>"  id="exampleFormControlSelect1"  class="form-control" placeholder="Doctor name" > <br>
								

                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                             
							
								 <input type="text"  name="specilization" value="<%= specilization %>"  id="exampleFormControlSelect2"  class="form-control" placeholder="specilization"   > <br> 
								
                            </div>
                        </div>

                         <div class="col-lg-6">
                            <div class="form-group">
                            
                            
                                 <input type="date" name="date"  value="<%= date %>" id="date" class="form-control" placeholder="dd/mm/yyyy" > <br>
                                
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                
                                 <input type="text"  name="time" value="<%= time %>" id="time" class="form-control" placeholder="Time" > <br>
                                
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="form-group">
                               
                                 <input type="text" name="name"  value="<%= name %>" id="name" class="form-control" placeholder="Full Name" > <br>
                                
                                
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                
                                 <input type="text" name="phone"  value="<%= phone %>" id="phone" class="form-control" placeholder="Phone Number" > <br>
                                
                            </div>
                        </div>
                    </div>
                    <div class="form-group-2 mb-4">
                        
                         <textarea   name="message"  value="<%= message %>"  id="message" class="form-control" placeholder="Your Message" ></textarea> <br>
                    </div>
                         
                         
                         <input type="submit" name="submit" value="Update Appointment"  class="btn btn-main btn-round-full"  onclick="myfunction()" > <br>
                         
                </form>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>




</form>


<script>
 function myfunction(){
	 
	 alert("updated appointment");
 }

</script>


</body>
</html>
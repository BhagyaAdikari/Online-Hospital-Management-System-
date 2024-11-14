<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="it23171992_com.users.RegisteredPatient" %>
    <%@ page import="it23171992_com.users.Users" %>
    <%@ page import="it23171992_com.users.Users" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import="java.util.List" %>
    <%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>

<%
    String loggedInUser = (String) session.getAttribute("user");
    System.out.println("Session user: " + loggedInUser);
    if (loggedInUser == null) {
        response.sendRedirect("adminLogin.jsp");
        return;
    }
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" href="resources/css/admin.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
    	    .card {
        color: #000; /* Default text color */
        background-color: #fff; /* Default background color */
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
        transition: all 0.3s ease-in-out;
        text-decoration: none; /* Remove underline */
    }

    .card:hover {
        background-color: #22BAA0; /* Background color on hover */
        color: #fff; /* Text color on hover */
        transform: translateY(-5px);
    }

    .card .card-block {
        padding: 25px;
    }

    .card i {
        font-size: 26px;
    }

    .f-left {
        float: left;
    }

    .f-right {
        float: right;
    }

    .order-card{
      text-decoration: none;
    }
    
    .div{
    	padding:30px;
    }
    </style>
</head>
<body>
   <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        
        <div class="side-content">
            <div class="profile">

                <img src="resources/images/logo.png" width="150px">
            </div>

            <div class="side-menu">
                <ul>
                    <li>
                       <a href="adminIndex.jsp" class="active">

                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                       <a href="AdminDashboardPageNavigationServlet?page=registeredPatient" class="active">

                            <small>Patient</small>
                        </a>
                    </li>
                    <li>
                       <a href="AdminDashboardPageNavigationServlet?page=ambulanceDriver" class="active">

                            <small>Drivers</small>
                        </a>
                    </li>
                    <li>
                       <a href="AdminDashboardPageNavigationServlet?page=ambulanceManager" class="active">

                            <small>Ambulance</small>
                        </a>
                    </li>
                    <li>
                       <a href="AdminDashboardPageNavigationServlet?page=ambulanceAppointment" class="active">

                            <small>Ambulance Appointment</small>
                        </a>
                    </li>
                    <li>
                       <a href="AdminDashboardPageNavigationServlet?page=reviewReports" class="active">

                            <small>Review Medication</small>
                        </a>
                    </li>
                    <li>
                       <a href="adminDocterAppointment.jsp" class="active">

                            <small>Manage Appointments</small>
                        </a>
                    </li>
                    <li>
                       <a href="adminBlog.jsp" class="active">

                            <small>Blog</small>
                        </a>
                    </li>
                    <li>
                       <a href="adminPharmacy.jsp" class="active">

                            <small>Pharmacy</small>
                        </a>
                    </li>
                    <li>
                       <a href="adminStaff.jsp" class="active">

                            <small>Staff Management</small>
                        </a>
                    </li>
                    <li>
                       <a href="adminContact.jsp" class="active">

                            <small>Contact Forms Management</small>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    
    <div class="main-content">
        
        <header>
            <div class="header-content">
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>
                
                <div class="header-menu">
                    <label for="">
                        <span class="las la-search"></span>
                    </label>
                    
                    <div class="notify-icon">
                        <span class="las la-envelope"></span>
                        <span class="notify">4</span>
                    </div>
                    
                    <div class="notify-icon">
                        <span class="las la-bell"></span>
                        <span class="notify">3</span>
                    </div>
                    
                    <div class="user">
                        <div class="bg-img" style="background-image: url(img/1.jpeg)"></div>
                        
                        <span class="las la-power-off"></span>
                        <span>Logout</span>
                    </div>
                </div>
            </div>
        </header>
        
        
        <main>
            
            <div class="page-header">
                <h1>Dashboard</h1>
                <small>Home / Dashboard</small>
            </div>
            
            <div class="page-content">
            
                <div class="analytics">

                    <div class="card">
                        <div class="card-head">
                            <h2>107,200</h2>
                            <span class="las la-user-friends"></span>
                        </div>
                        <div class="card-progress">
                            <small>User activity this month</small>
                            <div class="card-indicator">
                                <div class="indicator one" style="width: 60%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                            <h2>340,230</h2>
                            <span class="las la-eye"></span>
                        </div>
                        <div class="card-progress">
                            <small>Page views</small>
                            <div class="card-indicator">
                                <div class="indicator two" style="width: 80%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                            <h2>$653,200</h2>
                            <span class="las la-shopping-cart"></span>
                        </div>
                        <div class="card-progress">
                            <small>Monthly revenue growth</small>
                            <div class="card-indicator">
                                <div class="indicator three" style="width: 65%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                            <h2>47,500</h2>
                            <span class="las la-envelope"></span>
                        </div>
                        <div class="card-progress">
                            <small>New E-mails received</small>
                            <div class="card-indicator">
                                <div class="indicator four" style="width: 90%"></div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="records table-responsive">

                    <div class="div">
                        <div class="container">
						  <div class="row">
						      <!-- Card 1 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page1.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">Orders Received</h6>
						                      <h2 class="text-right"><i class="fa fa-cart-plus f-left"></i><span>486</span></h2>
						                      <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						      
						      <!-- Card 2 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page2.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">New Users</h6>
						                      <h2 class="text-right"><i class="fa fa-users f-left"></i><span>120</span></h2>
						                      <p class="m-b-0">Active Users<span class="f-right">90</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						      
						      <!-- Card 3 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page3.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">Pending Orders</h6>
						                      <h2 class="text-right"><i class="fa fa-hourglass-half f-left"></i><span>75</span></h2>
						                      <p class="m-b-0">Total Orders<span class="f-right">150</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						      
						      <!-- Card 4 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page4.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">Revenue</h6>
						                      <h2 class="text-right"><i class="fa fa-money f-left"></i><span>$12,500</span></h2>
						                      <p class="m-b-0">Monthly Revenue<span class="f-right">$3,500</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						  </div>

						  <div class="row">
						      <!-- Card 5 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page5.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">Feedback</h6>
						                      <h2 class="text-right"><i class="fa fa-comments f-left"></i><span>320</span></h2>
						                      <p class="m-b-0">User Feedback<span class="f-right">50</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						
						      <!-- Card 6 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page6.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">Support Tickets</h6>
						                      <h2 class="text-right"><i class="fa fa-ticket-alt f-left"></i><span>20</span></h2>
						                      <p class="m-b-0">Open Tickets<span class="f-right">5</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						
						      <!-- Card 7 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page7.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">System Status</h6>
						                      <h2 class="text-right"><i class="fa fa-cogs f-left"></i><span>Online</span></h2>
						                      <p class="m-b-0">System Health<span class="f-right">Good</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						
						      <!-- Card 8 -->
						      <div class="col-md-4 col-xl-3">
						          <a href="page8.html" class="order-card">
						              <div class="card">
						                  <div class="card-block">
						                      <h6 class="m-b-20">Settings</h6>
						                      <h2 class="text-right"><i class="fa fa-cog f-left"></i><span>Manage</span></h2>
						                      <p class="m-b-0">System Settings<span class="f-right">Update</span></p>
						                  </div>
						              </div>
						          </a>
						      </div>
						  </div>
						
						  <div class="row">
						    <!-- Card 5 -->
						    <div class="col-md-4 col-xl-3">
						        <a href="page5.html" class="order-card">
						            <div class="card">
						                <div class="card-block">
						                    <h6 class="m-b-20">Feedback</h6>
						                    <h2 class="text-right"><i class="fa fa-comments f-left"></i><span>320</span></h2>
						                    <p class="m-b-0">User Feedback<span class="f-right">50</span></p>
						                </div>
						            </div>
						        </a>
						    </div>
						  </div>
						</div>
                    </div>

                </div>
            
            </div>
            
        </main>
        
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="it23171992_dataBaseConnection.HMSDBConnect" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" href="resources/css/admin.css">
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<style type="text/css">
		.btn-update,
		.btn-delete {
		    padding: 8px 16px;
		    font-size: 14px;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		    margin:5px;
		}
		
		.btn-update {
		    background-color: #4CAF50; /* Green */
		    color: white;
		}
		
		.btn-update:hover {
		    background-color: #45a049;
		}
		
		.btn-delete {
		    background-color: #f44336; /* Red */
		    color: white;
		}
		
		.btn-delete:hover {
		    background-color: #d32f2f;
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
                  <div class="user">
                    <div class="bg-img" style="background-image: url(img/1.jpeg)"></div>
                    <span class="las la-power-off"></span>
                    <span>Hello Admin</span>
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
                <small>Ambulance Drivers Management / Dashboard</small>
            </div>
            
            <div class="page-content">
                <div class="records table-responsive">

                    <div class="record-header">
                        <div class="add">
                            <button id="addRecordBtn">Add record</button>
                        </div>

                        <!-- Popup Form (Initially Hidden) -->
                        <div id="popupForm" class="popup-form" style="display: none;">
                            <div class="form-content">
                                <span id="closeFormBtn">&times;</span>
                                <h2>Register Ambulance Driver</h2><br>
                                <form action="RegisteringAmbulanceDriversServlet" method="post">
                                    <label for="nameInput">Name:</label>
                                    <input type="text" id="nameInput" name="name">
                                    <label for="nameInput">Telephone:</label>
                                    <input type="text" id="nameInput" name="telep">
                                    <label for="nameInput">Address:</label>
                                    <input type="text" id="nameInput" name="add">
                                    <label for="nameInput">Email:</label>
                                    <input type="email" id="nameInput" name="email">
                                    <label for="nameInput">Date of birth:</label>
                                    <input type="date" id="nameInput" name="dob">
                                    <label for="nameInput">License Number:</label>
                                    <input type="text" id="nameInput" name="licenseNum">
                                    <label for="nameInput">Years of experience:</label>
                                    <input type="text" id="nameInput" name="years">
                                    <label for="nameInput">Password:</label>
                                    <input type="text" id="nameInput" name="password">
                                    <button type="submit">Submit</button>
                                </form>
                            </div>
                        </div>

                        <div class="browse">
                           
                        </div>
                    </div>

                    <div>
                        <table width="100%">
                            <thead>
                            	
                                <tr>
                                    <th>ID</th>
                                    <th><span class="las la-sort"></span> Name</th>
                                    <th><span class="las la-sort"></span> Telephone Number</th>
                                    <th><span class="las la-sort"></span> Address</th>
                                    <th><span class="las la-sort"></span> License Number</th>
                                    <th><span class="las la-sort"></span> ACTIONS</th>
                                </tr>
                            </thead>
                            <tbody>
                            	
                            	<c:forEach var="driver" items="${ambDriver }">
                            	
                            	    
                            	
                            	
                                <tr>
                                    <td>${driver.driverId }</td>
                                    <td>
                                        <div class="client">
                                           <div class="client-img bg-img" style="background-image: url(resources/images/adminImages/avatar2.png)"></div>
                                            <div class="client-info">
                                                <h4>${driver.name }</h4>
                                                <small>Email : ${driver.email }</small><br>
                                  				<small>DOB : ${driver.dob }</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        ${driver.telephoneNumber }
                                    </td>
                                    <td>
                                        ${driver.address }
                                    </td>
                                    <td>
                                        <div class="client">
  
                                            <div class="client-info">
                                                <h4>${driver.licenseNumber }</h4>
                                                <small>Experience : ${driver.yearOfExperience }</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="actions">
												<c:set var="driverId" value="${driver.driverId}"/>
			                                    <c:set var="name" value="${driver.name}"/>
			                                    <c:set var="telep" value="${driver.telephoneNumber}"/>
			                                    <c:set var="address" value="${driver.address}"/>
			                                    <c:set var="email" value="${driver.email}"/>
			                                    <c:set var="dob" value="${driver.dob}"/>
			                                    <c:set var="licenseNum" value="${driver.licenseNumber}"/>
			                                    <c:set var="years" value="${driver.yearOfExperience}"/>
			                                    <c:set var="pass" value="${driver.password}"/>
									            
									            <c:url var="updateDriver" value="updateDriversDetails.jsp">
									            	<c:param name="driverId" value="${driver.driverId}" />
									                <c:param name="name" value="${driver.name}" />
									                <c:param name="telep" value="${driver.telephoneNumber}" />
									                <c:param name="address" value="${driver.address}" />
									                <c:param name="email" value="${driver.email}" />
									                <c:param name="dob" value="${driver.dob}" />
									                <c:param name="licenseNum" value="${driver.licenseNumber}" />
									                <c:param name="years" value="${driver.yearOfExperience}" />
									                <c:param name="pass" value="${driver.password}" />
									            </c:url>
									            
												<span>
												    <a href="${updateDriver}">
												        <input type="button" name="update" value="updateMyData" class="btn-update">
												    </a>
												</span>
												
												<form action="AmbulanceDriverDeleteServlet" method="post">
												    <input type="hidden" value="${driver.driverId}" name="driverId">
												    <span>
												        <input type="submit" name="update" value="delete" class="btn-delete">
												    </span>
												</form>
										</div>
                                    </td>
                                </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>

                </div>
            
            </div>
            
        </main>
        
    </div>

    <script src="resources/js/admin.js"></script>
</body>
</html>
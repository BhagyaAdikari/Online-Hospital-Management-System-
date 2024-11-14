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
		
		/* Styles for the select dropdown */
		select[name="ambulanceNumber"] {
		    width: 80%;
		    padding: 8px;
		
		    border-radius: 4px;
		    border: 1px solid #ccc;
		    background-color: #f9f9f9;
		    cursor: pointer;
		}
		
		select[name="ambulanceNumber"]:focus {
		    border-color: #007bff;
		    outline: none;
		}
		
		
		
		/* Styles for the Assign button */
		.client-info button[type="submit"] {
		    background-color: #007bff;
		    color: white;
		    border: none;
		    padding: 6px 12px;
		    font-size: 12px;
		    margin:5px;
		    border-radius: 4px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}
		
		.client-info button[type="submit"]:hover {
		    background-color: #0056b3;
		}
		
		.client-info button[type="submit"]:focus {
		    outline: none;
		    box-shadow: 0 0 3px rgba(0, 123, 255, 0.5);
		}
		
		#driverAssigned{
			color:green;
			font-size:16px;
			font-weight:700;
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
                <small>Home / Dashboard</small>
            </div>
            
            <div class="page-content">
                <div class="records table-responsive">

                    <div class="record-header">

                        <div class="browse">
                           
                        </div>
                    </div>

                    <div>
                        <table width="100%">
                            <thead>
                                <tr>
                               
                                    <th><span class="las la-sort"></span> Appointment Date</th>
                                    <th><span class="las la-sort"></span> Purpose</th>
                                    <th><span class="las la-sort"></span> Applicant Name</th>
                                    <th><span class="las la-sort"></span> Ambulance Number</th>
                                    <th><span class="las la-sort"></span> Assign Ambulance</th>
                                    <th><span class="las la-sort"></span> Change Status</th>
                                    <th><span class="las la-sort"></span> Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            	
                            	<c:forEach var="app" items="${ambAppointments }">
                       			
                                <tr>
                               
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>${app.appointDate }</h4>
                                                <small>${app.appointTime }</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        ${app.purpose }
                                    </td>
                                    <td>
                                        <div class="client">
                                            <div class="client-info">
                                                <h4>${app.applicantName }</h4>
                                                <small>${app.applicantPhoneNumber }</small><br>
                                                <small>Current Location : ${app.patientLocation }</small><br>
                                                <small>Destination : ${app.droppedLocation }</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        ${app.ambulanceNumber }
                                    </td>
                                    <form action="AssignAmbulanceServlet" method="post">
						                <input type="hidden" name="appointmentId" value="${app.appointmentId}"/> <!-- Hidden field for appointment ID -->
						                <td>
						                    <c:choose>
						                    	<c:when test="${app.appointmentStatus != 'COMPLETED' && app.appointmentStatus != 'ASSIGNED'}">
						                    		<select name="ambulanceNumber">
								                        <option value="">Select an available ambulance</option>
								                        <c:forEach var="ambulance" items="${availableAmbulance}">
								                            <option value="${ambulance.ambulanceNumber}">${ambulance.ambulanceNumber}</option>
								                        </c:forEach>
								                    </select>
						                    	</c:when>
						                    </c:choose>
						                </td>
						                <td>
						                    <div class="client">
						                        <div class="client-info">
						                        	<c:choose>
						                        		<c:when test="${app.fee>0 }">
						                        			<h4>Total Fee : ${app.fee }</h4>
						                        		</c:when>
						                        	</c:choose>
						                            <small id="driverAssigned">${app.appointmentStatus}</small><br>
						                            <c:choose>
						                            	<c:when test="${app.appointmentStatus == 'Pending'}">
						                            		<div>
								                                <button type="submit">Assign</button> <!-- Submit button to assign the ambulance -->
								                            </div>
						                            	</c:when>
						                            </c:choose>
						                        </div>
						                    </div>
						                </td>
						            </form>
						            <td>
						            	<div class="actions">
												<c:set var="appId" value="${app.appointmentId}"/>
			                                    <c:set var="date" value="${app.appointDate}"/>
			                                    <c:set var="time" value="${app.appointTime}"/>
			                                    <c:set var="destination" value="${app.droppedLocation}"/>
									            
									            <c:url var="updateAppointment" value="updateAppointmentDetails.jsp">
									            	<c:param name="appId" value="${app.appointmentId}" />
									                <c:param name="date" value="${app.appointDate}" />
									                <c:param name="time" value="${app.appointTime}" />
									                <c:param name="destination" value="${app.droppedLocation}" />
									            </c:url>
									            
												<span>
												    <a href="${updateAppointment}">
												        <input type="button" name="update" value="updateMyData" class="btn-update">
												    </a>
												</span>
												
												<form action="DeleteAmbulanceAppointmentServlet" method="post">
												    <input type="hidden" value="${app.appointmentId}" name="appointmentId">
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

    <script src="./admin.js"></script>
</body>
</html>
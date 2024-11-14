<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="it23171992_dataBaseConnection.HMSDBConnect"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Modern Admin Dashboard</title>
<link rel="stylesheet" href="resources/css/admin.css">
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

<style>
.popup-form {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: center;
	justify-content: center;
	z-index: 1000;
}

.form-content {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	width: 400px;
	position: relative;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 15px;
	font-size: 24px;
	cursor: pointer;
}

label, input {
	display: block;
	width: 100%;
	margin-bottom: 10px;
}

button[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #45a049;
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
				<label for="menu-toggle"> <span class="las la-bars"></span>
				</label>

				<div class="header-menu">
					<div class="user">
						<div class="bg-img" style="background-image: url(img/1.jpeg)"></div>
						<span class="las la-power-off"></span> <span>Hello Admin</span>
					</div>

					<div class="user">
						<div class="bg-img" style="background-image: url(img/1.jpeg)"></div>
						<span class="las la-power-off"></span> <span>Logout</span>
					</div>
				</div>
			</div>
		</header>


		<main>

			<div class="page-header">
				<h1>Dashboard</h1>
				<small>Ambulance Management / Dashboard</small>		
			</div>


			<div class="page-content">
				<!--
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
                -->


				<div class="records table-responsive">

					<div class="record-header">
						<div class="add">
							<button id="addRecordBtn">Add record</button>

							<!-- Popup Form (Initially Hidden) -->
							<div id="popupForm" class="popup-form" style="display: none;">
								<div class="form-content">
									<span id="closeFormBtn">&times;</span>
									<h2>Register Ambulance Driver</h2>
									<br>
									<form action="AmbulanceRegisterServlet" method="post">
										<label for="nameInput">Registration Year:</label> 
										<input type="text" id="nameInput" name="regYear"> 
										<label for="nameInput">Chassis Number:</label> 
										<input type="text" id="nameInput" name="chasnum">
										<label for="driverIdSelect">Driver Id:</label>
										
										<!-- select a driver from a driver table and assign to the ambulance -->
										<select id="driverIdSelect" name="driverId" required>
											<option>Select a driver</option>
										<%

										    Connection con = null;
										    Statement stmt = null;
										    ResultSet rs = null;
										
										    con = HMSDBConnect.getConnection();
										    stmt = con.createStatement();
										
										    String sql = "select ad.driverId,ad.fullname from ambulanceDriver ad left outer join ambulance a on a.driverId=ad.driverId where a.driverId is null";
										    rs = stmt.executeQuery(sql);
										
										    if (!rs.isBeforeFirst()) {
										        out.println("No files available");
										    } else {
										        while (rs.next()) {
										            String id = rs.getString(1);
										            String name = rs.getString(2);
										%>
										
											
											<!-- drivers get from the database -->
											<option value="<%=id%>"><%=name %></option>

										<%
										        }
										    }
										%>
										</select>
										<button type="submit">Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div>
						<table width="100%">
							<thead>
								<tr>
									<th>Ambulance Number</th>
									<th><span class="las la-sort"></span>Driver</th>
									<th><span class="las la-sort"></span>Chassis Number</th>
									<th><span class="las la-sort"></span>Registered year</th>

									<th><span class="las la-sort"></span> ACTIONS</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="amb" items="${ambDetails }">

									<c:set var="ambNumber" value="${amb.ambulanceNumber }" />
									<c:set var="driverName" value="${amb.driverName }" />
									<c:set var="driverId" value="${amb.driverId }" />
									<c:set var="chassisNum" value="${amb.chassisNumber }" />
									<c:set var="regYear" value="${amb.registeredYear }" />

									<tr>
										<td>${amb.ambulanceNumber }</td>
										<td>
											<div class="client">
												<div class="client-img bg-img"
													style="background-image: url(resources/images/adminImages/avatar2.png)"></div>
												<div class="client-info">
													<h4>${amb.driverName }</h4>
													<small>${amb.driverId }</small>
												</div>
											</div>
										</td>
										<td>${amb.chassisNumber }</td>
										<td>${amb.registeredYear }</td>

										<td>
											<div class="actions">
												<span class="lab la-telegram-plane"></span> <span
													class="las la-eye"></span> <span class="las la-ellipsis-v"></span>
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
    
	    <script>
		    // Show popup form
		    document.getElementById("addRecordBtn").onclick = function() {
		        document.getElementById("popupForm").style.display = "block";
		    };
		
		    // Hide popup form
		    document.getElementById("closeFormBtn").onclick = function() {
		        document.getElementById("popupForm").style.display = "none";
		    };
		
		    // Close popup form if clicking outside of the form content
		    window.onclick = function(event) {
		        var popupForm = document.getElementById("popupForm");
		        if (event.target == popupForm) {
		            popupForm.style.display = "none";
		        }
		    };
		</script>
	
</body>
</html>
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
				<small>Patient Management / Dashboard</small>
			</div>

			<div class="page-content">
				<div class="records table-responsive">

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

								<c:forEach var="patient" items="${getRegPatient }">

									<tr>
										<td>${patient.regUserId }</td>
										<td>
											<div class="client">
												<div class="client-img bg-img"
													style="background-image: url('resources/images/profilePictures/${patient.profilePicture}');"></div>
												<div class="client-info">
													<h4>${patient.name }</h4>
													<small>Email : ${patient.email }</small><br> <small>DOB
														: ${patient.dob }</small>
												</div>
											</div>
										</td>
										<td>${patient.telephoneNumber }</td>
										<td>${patient.address }</td>
										<td>
											<div class="client">

												<div class="client-info">
													<h4>Username: ${patient.userName }</h4>
													<small>Password : ${patient.password }</small>
												</div>
											</div>
										</td>
										<td>
											<div class="actions">
												<c:set var="name" value="${patient.name}" />
												<c:set var="userId" value="${patient.regUserId}" />
									            <c:set var="userName" value="${patient.userName}" />
									            <c:set var="profilePicture" value="${patient.profilePicture}" />
									            <c:set var="email" value="${patient.email}" />
									            <c:set var="dob" value="${patient.dob}" />
									            <c:set var="telephoneNumber" value="${patient.telephoneNumber}" />
									            <c:set var="address" value="${patient.address}" />
									            <c:set var="password" value="${patient.password}" />
									            
									            <c:url var="updatePatient" value="updatePatientDetails.jsp">
									            	<c:param name="name" value="${patient.name}" />
									                <c:param name="userId" value="${patient.regUserId}" />
									                <c:param name="userName" value="${patient.userName}" />
									                <c:param name="profilePicture" value="${patient.profilePicture}" />
									                <c:param name="email" value="${patient.email}" />
									                <c:param name="dob" value="${patient.dob}" />
									                <c:param name="telephoneNumber" value="${patient.telephoneNumber}" />
									                <c:param name="address" value="${patient.address}" />
									                <c:param name="password" value="${patient.password}" />
									            </c:url>
									            
												<span>
												    <a href="${updatePatient}">
												        <input type="button" name="update" value="updateMyData" class="btn-update">
												    </a>
												</span>
												
												<form action="DeleteRegisteredUserServlet" method="post">
													<input type="hidden" value="adminPatient" name="page">
												    <input type="hidden" value="${patient.regUserId}" name="id">
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
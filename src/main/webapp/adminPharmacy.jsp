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
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
				<small>Home / Dashboard</small>
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
							<span>Entries</span> <select name="" id="">
								<option value="">ID</option>
							</select>
							<button><a href="pharmacyInsert.jsp">Add record</a></button>
						</div>

						<div class="browse">
							<input type="search" placeholder="Search" class="record-search">
							<select name="" id="">
								<option value="">Status</option>
							</select>
						</div>
					</div>

					<div>
						<table width="100%">
							<thead>
								<tr>
									<th>ID</th>

									<th><span class="las la-sort"></span> Item Name</th>
									<th><span class="las la-sort"></span> Category</th>
									<th><span class="las la-sort"></span> Description</th>
									<th><span class="las la-sort"></span> Price</th>
									<th><span class="las la-sort"></span> Availability</th>
									<th><span class="las la-sort"></span> Image</th>
									<th><span class="las la-sort"></span> Storage Conditions</th>
									<th><span class="las la-sort"></span> Age Restriction</th>
									<th><span class="las la-sort"></span> Usage Instructions</th>
									<th>Options</th>
								</tr>
							</thead>
							<%
							try {
								connection = DriverManager.getConnection(connectionUrl + database, userid, password);
								System.out.println("Database Conneection is success!!");
								statement = connection.createStatement();
								String sql = "select * from t1";
								resultSet = statement.executeQuery(sql);
								while (resultSet.next()) {
							%>
							<tbody>
								<tr>
								<td><%=resultSet.getString("idt1")%></td>
									<td><%=resultSet.getString("name")%></td>
									<td><%=resultSet.getString("cate")%></td>
									<td><%=resultSet.getString("des")%></td>
									<td><%=resultSet.getString("price")%></td>
									<td><%=resultSet.getString("avail")%></td>
									<td><img
										src="resources/images/pharmacy/<%=resultSet.getString("img")%>"
										alt="Image" width="100px"></td>									
									<td><%=resultSet.getString("storageConditions")%></td>
									<td><%=resultSet.getString("ageRestriction")%></td>
									<td><%=resultSet.getString("usageInstructions")%></td>
									<td><c:url value="pharUpdate.jsp" var="cusupdate">
											<c:param name="idt1" value='<%=resultSet.getString("idt1")%>' />
											<c:param name="name" value='<%=resultSet.getString("name")%>' />
											<c:param name="cate" value='<%=resultSet.getString("cate")%>' />
											<c:param name="price"
												value='<%=resultSet.getString("price")%>' />
											<c:param name="avail"
												value='<%=resultSet.getString("avail")%>' />
											<c:param name="img" value='<%=resultSet.getString("img")%>' />
											<c:param name="des" value='<%=resultSet.getString("des")%>' />
											<c:param name="ageRestriction"
												value='<%=resultSet.getString("ageRestriction")%>' />
											<c:param name="storageConditions"
												value='<%=resultSet.getString("storageConditions")%>' />
											<c:param name="usageInstructions"
												value='<%=resultSet.getString("usageInstructions")%>' />
										</c:url> <a href="${cusupdate}"> <input type="button"
											name="update" value="Update Item" onclick="leaveConfir()">
									</a>
									
										
										<form action="PharDelete" method="post">
		<h3>

			<input type="text" name="idt1" value='<%=resultSet.getString("idt1")%>' hidden><br>
		 <input type="submit" name="submit" value="Delete Item" onclick="return deleteConfir()"></td>
								</tr>
								<%
								}
								connection.close();
								} catch (Exception e) {
								e.printStackTrace();
								System.out.println("Database Conneection is not success!!");
								}
								%>

							</tbody>
						</table>
					</div>

				</div>

			</div>

		</main>

	</div>
	<script src="resources/js/common.js"></script>
</body>
</html>
<%@page import="it23171992_com.users.UserDbUtil"%>
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
    
    <style>
		
		/* Style the form container */
		form {
		    max-width: 500px;
		    margin: 40px auto;
		    padding: 20px;
		    border: 1px solid #ddd;
		    border-radius: 8px;
		    background-color: #f9f9f9;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}
		
		/* Style the labels */
		form label {
		    font-size: 15px;
		    font-weight: bold;
		    color: #333;
		    display: block;
		    margin-bottom: 8px;
		}
		
		/* Style the select and input fields */
		form select, 
		form input[type="text"], 
		form input[type="file"] {
		    width: 100%;
		    padding: 10px;
		    margin-bottom: 15px;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    font-size: 15px;
		    box-sizing: border-box;
		    transition: border-color 0.3s ease;
		}
		
		form select:focus, 
		form input[type="text"]:focus, 
		form input[type="file"]:focus {
		    border-color: #4CAF50;
		}
		
		/* Style the submit button */
		form button[type="submit"] {
		    width: 100%;
		    padding: 12px;
		    font-size: 16px;
		    color: #fff;
		    background-color: #4CAF50;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}
		
		form button[type="submit"]:hover {
		    background-color: #45a049;
		}
		
		/* Responsive styling */
		@media (max-width: 600px) {
		    form {
		        padding: 15px;
		    }
		}
		
		/* Hide the form container by default */
		.hidden {
		    display: none;
		}
		
		/* Style the toggle button */
		#toggleButton {
		    display: block;
		    margin: 20px auto;
		    padding: 10px 20px;
		    font-size: 16px;
		    color: #fff;
		    background-color: #4CAF50;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}
		
		#toggleButton:hover {
		    background-color: #45a049;
		}
		
		/* Add styles from the previous form CSS here */
				

		
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
                        <div class="add" class="hidden">
                        
                        
                            <button id="toggleButton">Show Form</button>

							<!-- Form Container -->
							<div id="formContainer" class="hidden">
							    <form action="AdminMedicationReportsSubmitServlet" method="post" enctype="multipart/form-data">
							        <label for="userId">Select User:</label>
							        <select name="userId">
							            <% 
							                Connection con = null;
							                Statement stmt = null;
							                ResultSet rs = null;
							
							                con = HMSDBConnect.getConnection();
							                stmt = con.createStatement();
							
							                String sql = "select userId,fullName from registeredUser";
							                rs = stmt.executeQuery(sql);
							
							                if (!rs.isBeforeFirst()) {
							                    out.println("No users available");
							                } else {
							                    while (rs.next()) {
							                        String id = rs.getString(1);
							                        String name = rs.getString(2);
							            %>
							            <option value="<%=id%>"><%=id%>-<%=name %></option>
							            <%
							                    }
							                }
							            %>
							        </select>
							        <label for="file">Report Name:</label>
							        <input type="text" name="remark" required><br>
							        <label for="file">Upload Report:</label>
							        <input type="file" name="mediFile" required>
							        <button type="submit">Upload</button>
							    </form>
							</div>
                        </div>
                    </div>

                    <div>
                        <table width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th><span class="las la-sort"></span> Medication Report Name </th>
                                    <th><span class="las la-sort"></span> Preview Report</th>
                                    <th><span class="las la-sort"></span> UserId</th>
                                   
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="file" items="${fileDetails }">
                                <tr>
                                    <td>${file.id }</td>

                                    <td>
                                        ${file.remark }
                                    </td>
                                    <td>
                                        <a href="resources/images/regUserMedicationReports/${file.fileName }">View File</a>
                                    </td>
                                    <td>
                                        ${file.userId }
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
    
	<script type="text/javascript">
	// JavaScript to toggle the form visibility
	document.getElementById("toggleButton").addEventListener("click", function() {
	    var formContainer = document.getElementById("formContainer");
	    var toggleButton = document.getElementById("toggleButton");

	    // Toggle the hidden class to show or hide the form
	    if (formContainer.classList.contains("hidden")) {
	        formContainer.classList.remove("hidden");
	        toggleButton.textContent = "Hide Form";
	    } else {
	        formContainer.classList.add("hidden");
	        toggleButton.textContent = "Show Form";
	    }
	});

	</script>
</body>
</html>
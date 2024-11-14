<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include necessary tag libraries -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String id = request.getParameter("id");

// Database connection variables
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hms";
String userid = "root";
String password = "Chath@2001";


try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}

// Initialize connection objects
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

//  connection database
connection = DriverManager.getConnection(connectionUrl + database, userid, password);
System.out.println("Database Connection is successful!!");

try {
    // Create a statement to execute SQL queries
    statement = connection.createStatement();
    String sql = "select * from staff";
    resultSet = statement.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment - EliteHealth Hospitals</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <!-- Link to custom stylesheet -->
    <link rel="stylesheet" href="resources/css/admin.css">
    <!-- Link to icon library -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

                                                <!-- JavaScript for confirming delete action -->
 <script type="text/javascript">
    function confirmDelete() {
        // Show a confirmation dialog
        return confirm("Are you sure you want to delete this appointment?");
    }
</script>
 



</head>

<body id="top">

    <!-- Sidebar navigation and header -->
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

    <!-- Main content area -->
    <div class="main-content">
        <header>
            <div class="header-content">
                <label for="menu-toggle"> <span class="las la-bars"></span></label>

                <!-- Header user information -->
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

        <!-- Main dashboard area -->
        <main>
            <div class="page-header">
                <h1>Dashboard</h1>
                <small>Home / Dashboard</small>
            </div>

            <div class="page-content">
                <center>
                    <h1>Appointment</h1>
                </center>
                <br>

                <!-- Table to display appointments -->
                <div class="records table-responsive">
                    <div class="record-header">
                        <div class="add">
                            <span>Entries</span>
                            <select name="" id="">
                                <option value="">ID</option>
                            </select>
                            <button><a href="Staffmanagment.jsp">Add record</a></button>
                        </div>
                        <div class="browse">
                            <input type="search" placeholder="Search" class="record-search">
                            <select name="" id="">
                                <option value="">Status</option>
                            </select>
                        </div>
                    </div>

                    <!-- Table structure -->
                    <div>
                        <table width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Doctor Name</th>
                                    <th>Email</th>
                                    <th>Specialization</th>
                                    <th>Salary</th>
                                    <th>phoneNumber</th>
                                    <th>Description</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            
                          
                            <tbody>
                                <%
                                while (resultSet.next()) {
                                %>
                                <tr>
                                    <td><%=resultSet.getString("id")%></td>
                                    <td><%=resultSet.getString("name")%></td>
                                     <td><%=resultSet.getString("email")%></td>
                                    <td><%=resultSet.getString("specialization")%></td>
                                   <td><%=resultSet.getString("salary")%></td>
                                    <td><%=resultSet.getString("phoneNumber")%></td>
                                    <td><%=resultSet.getString("description")%></td>
                                    
                                    
                                    <td>
                                        <c:url value="updateStaffmanagment.jsp" var="appdelete">
                                            <c:param name="id" value='<%=resultSet.getString("id")%>'/>
                                            <c:param name="name" value='<%=resultSet.getString("name")%>'/>
                                            <c:param name="specialization" value='<%=resultSet.getString("specialization")%>'/>
                                            <c:param name="email" value='<%=resultSet.getString("email")%>'/>
                                            <c:param name="phoneNumber" value='<%=resultSet.getString("phoneNumber")%>'/>
                                            <c:param name="salary" value='<%=resultSet.getString("salary")%>' />
                                            <c:param name="description" value='<%=resultSet.getString("description")%>' />
                                        </c:url> 
                                        <a href="${appdelete}"> <input type="button" name="update" value="Update" class="btn"> </a>
                                        
                                        <form action="deleteStaffmanagmentServlet" method="post">
                                        <input type="text" name="id" value='<%=resultSet.getString("id")%>' hidden>
                                        <input type="submit" name="update" value="Delete" class="btn" onclick="return confirmDelete()">
                                        </form>
                                        
                                        
                                             
                                        </a>
                                    </td>
                                </tr>
                                <%
                                }
                                %>
                            </tbody>
                    </div>
                </div>
            </div>
        </main>
    </div>

</body>
</html>

<!-- Close the database connection -->
<%
    connection.close();
} catch (Exception e) {
    e.printStackTrace();
    System.out.println("Database Connection is not successful!!");
}
%>

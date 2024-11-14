<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Page title -->
<title>Insert title here</title>
</head>
<body>

<!-- Retrieving parameters from the request object -->
 <%
      String id = request.getParameter("id");
     String name = request.getParameter("name");
     String email = request.getParameter("email");
     String specialization = request.getParameter("specialization");
     String salary = request.getParameter("salary");
     String phoneNumber = request.getParameter("phoneNumber");
     String description = request.getParameter("description");
    
     %>

       <!-- Form for updating staff management data -->
       <form action= "UpdateStaffmanagmentServlet" method="post">
       
           <!-- Creating a table to display form fields -->
       <table>
           <tr>
             <td>StaffmanagmentID</td>
             <td><input type="text" name="id1" value="<%= id %>" readonly></td>
             </tr>
             <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%= name %>"></td>
                </tr>
                 <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%= email %>"></td>
                </tr>
                 <tr>
                <td>specialization</td>
                <td><input type="text" name="specialization" value="<%= specialization %>"></td>
                </tr>
                 <tr>
                <td>salary</td>
                <td><input type="text" name="salary" value="<%= salary %>"></td>
                </tr>
                 <tr>
                <td>phone</td>
                <td><input type="text" name="phoneNumber" value="<%= phoneNumber %>"></td>
                </tr>
                 <tr>
                <td>Description</td>
                <td><input type="text" name="description" value="<%= description %>"></td>
                </tr>
                
                </table>
                
                    <!-- Submit button to send form data for updating -->
                <br>
                <input type="submit" name="submit" value="update My Data"><br>
      
      </form>



</body>
</html>
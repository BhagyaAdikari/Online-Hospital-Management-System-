<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 <%
 // Retrieving staff member details from request parameters passed from the servlet
      String id = request.getParameter("id");
     String name = request.getParameter("name");
     String email = request.getParameter("email");
     String specialization = request.getParameter("specialization");
     String salary = request.getParameter("salary");
     String phoneNumber = request.getParameter("phoneNumber");
     String description = request.getParameter("description");
     String username = request.getParameter("username");
     String password = request.getParameter("password");
       
    %>
       
       <h1>StaffmanagmentAccount Delete</h1>
       
       
         <form action= "deleteStaffmanagmentServlet" method="post">
       
       <table>
           <tr>
             <td>StaffmanagmentID</td>
             <td><input type="text" name="stuffid" value="<%= id %>" readonly></td>
             </tr>
             <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%= name %>" readonly></td>
                </tr>
                 <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%= email %>" readonly></td>
                </tr>
                 <tr>
                <td>specialization</td>
                <td><input type="text" name="specialization" value="<%= specialization %>" readonly></td>
                </tr>
                 <tr>
                <td>salary</td>
                <td><input type="text" name="salary" value="<%= salary %>" readonly></td>
                </tr> <tr>
                <td>phone</td>
                <td><input type="text" name="phoneNumber" value="<%= phoneNumber %>" readonly></td>
                </tr>
                 <tr>
                <td>description</td>
                <td><input type="text" name="description" value="<%= description %>" readonly></td>
                </tr>
                 <tr>
                <td>User</td>
                <td><input type="text" name="uname" value="<%= username %>" readonly></td>
                </tr>
                 <tr>
                <td>password</td>
                <td><input type="text" name="pass" value="<%= password %>" readonly></td>
                </tr>
                </table>
                <br>
                <input type="submit" name="submit" value="delete My Data"><br>
      
      </form>

</body>
</html>
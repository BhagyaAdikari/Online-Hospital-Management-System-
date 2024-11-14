<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Patient details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/updatePage.css">

</head>

<body>
	<%
		String id = request.getParameter("driverId");
		String pass = request.getParameter("pass");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telep");
		String address = request.getParameter("address");
		String name=request.getParameter("name");
		String dob = request.getParameter("dob");
		String experience = request.getParameter("years");
		String licenceNumber = request.getParameter("licenseNum");
	%>

  <div class="container mt-5">
    <h2 class="mb-4 text-center">Update Registered Driver Informations</h2>

    <!-- Update Form -->
    <div class="card mb-4">
      <div class="card-body">
        <form id="updateForm" action="UpdateDriverDetailsServlet" method="post">
        	<input type="hidden" name="driverId" value="<%=id%>">
          <div class="mb-3">
            <label for="driverId" class="form-label">Patient name</label>
            <input type="text" class="form-control" value="<%=name %>" id="name" name="name" placeholder="Enter name" required>
          </div>
          <div class="mb-3">
            <label for="driverId" class="form-label">Years Of experience</label>
            <input type="text" class="form-control" value="<%=experience %>" id="exp" name="exp" placeholder="Enter years of experience" required>
          </div>
          <div class="mb-3">
            <label for="name" class="form-label">Licence Number</label>
            <input type="text" class="form-control" value="<%=licenceNumber %>" id="licenceNumber" name="licenseNum" placeholder="Enter licence Number" required>
          </div>
          <div class="mb-3">
            <label for="telep" class="form-label">Password</label>
            <input type="password" class="form-control" value="<%=pass %>" id="pass" name="pass" placeholder="Enter password" required>
          </div>
          <div class="mb-3">
            <label for="add" class="form-label">Email</label>
            <input type="email" class="form-control" value="<%=email %>" id="add" name="email" placeholder="Enter email" required>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Telephone</label>
            <input type="text" class="form-control" value="<%=telephone %>" id="telep" name="telep" placeholder="Enter phone number" required>
          </div>
          <div class="mb-3">
            <label for="dob" class="form-label">Address</label>
            <input type="text" class="form-control" value="<%=address %>" id="address" name="address" required>
          </div>
          <div class="mb-3">
            <label for="licenseNum" class="form-label">Date of Birth</label>
            <input type="date" class="form-control" value="<%=dob %>" id="dob" name="dob" placeholder="Enter date of birth" required>
          </div>
          <button type="submit" class="btn btn-primary">Update Driver</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS & Popper.js -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"></script>

</body>
</html>

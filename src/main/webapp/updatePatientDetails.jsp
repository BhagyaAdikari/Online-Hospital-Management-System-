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
		String id = request.getParameter("userId");
		String uname = request.getParameter("userName");
		String pass = request.getParameter("password");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephoneNumber");
		String address = request.getParameter("address");
		String name=request.getParameter("name");
		String dob = request.getParameter("dob");
	%>

  <div class="container mt-5">
    <h2 class="mb-4 text-center">Update Registered Patient Informations</h2>

    <!-- Update Form -->
    <div class="card mb-4">
      <div class="card-body">
        <form id="updateForm" action="UpdatePatientServlet" method="post">
        	<input type="hidden" name="userId" value="<%=id%>">
          <div class="mb-3">
            <label for="driverId" class="form-label">Patient name</label>
            <input type="text" class="form-control" value="<%=name %>" id="name" name="name" placeholder="Enter name" required>
          </div>
          <div class="mb-3">
            <label for="name" class="form-label">Username</label>
            <input type="text" class="form-control" value="<%=uname %>" id="uname" name="uname" placeholder="Enter username" required>
          </div>
          <div class="mb-3">
            <label for="telep" class="form-label">Password</label>
            <input type="password" class="form-control" value="<%=pass %>" id="pass" name="pass" placeholder="Enter password" required>
          </div>
          <div class="mb-3">
            <label for="add" class="form-label">Email</label>
            <input type="email" class="form-control" value="<%=email %>" id="add" name="add" placeholder="Enter email" required>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Telephone</label>
            <input type="text" class="form-control" value="<%=telephone %>" id="telephone" name="telephone" placeholder="Enter phone number" required>
          </div>
          <div class="mb-3">
            <label for="dob" class="form-label">Address</label>
            <input type="text" class="form-control" value="<%=address %>" id="address" name="address" required>
          </div>
          <div class="mb-3">
            <label for="licenseNum" class="form-label">Date of Birth</label>
            <input type="date" class="form-control" value="<%=dob %>" id="dob" name="dob" placeholder="Enter date of birth" required>
          </div>
          <button type="submit" class="btn btn-primary">Update Patient</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS & Popper.js -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"></script>

  <script>
    document.getElementById('updateForm').addEventListener('submit', function (event) {
      event.preventDefault();
      const driverId = document.getElementById('driverId').value;
      const name = document.getElementById('name').value;
      alert(`Updating Driver ID: ${driverId} to Name: ${name}`);
      // You would normally send an AJAX request here to update the driver on the server
    });
  </script>
</body>
</html>

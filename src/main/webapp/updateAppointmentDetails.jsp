<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Appointment Informations</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/updatePage.css">

</head>

<body>
	<%
		String id = request.getParameter("appId");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String destination = request.getParameter("destination");
	%>

  <div class="container mt-5">
    <h2 class="mb-4 text-center">Update Appointment Informations</h2>

    <!-- Update Form -->
    <div class="card mb-4">
      <div class="card-body">
        <form id="updateForm" action="UpdateAmbulanceAppointmentServlet" method="post">
        	<input type="hidden" name="appid" value="<%=id%>">
          <div class="mb-3">
            <label for="driverId" class="form-label">Appointment Date</label>
            <input type="date" class="form-control" value="<%=date %>" id="date" name="date" placeholder="Enter name" required>
          </div>
          <div class="mb-3">
            <label for="driverId" class="form-label">Appointment Date</label>
            <input type="text" class="form-control" value="<%=time %>" id="time" name="time" placeholder="Enter name" required>
          </div>
          <div class="mb-3">
            <label for="name" class="form-label">Destination</label>
            <input type="text" class="form-control" value="<%=destination %>" id="destination" name="destination" placeholder="Enter licence Number" required>
          </div>
          <button type="submit" class="btn btn-primary">Update Appointment</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS & Popper.js -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"></script>


</body>
</html>

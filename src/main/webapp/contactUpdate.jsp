<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Arial', sans-serif;
	/* background-color: #3a82f7; */
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image: url('background.jpg');
	background-repeat: no-repeat;
}

.container {
	width: 100%;
	max-width: 800px;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	/* background-color: transparent; */
}

.form-container {
	width: 100%;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.section-title {
	margin: 20px 0 10px;
	font-size: 18px;
	font-weight: bold;
	color: #333;
	border-bottom: 2px solid #3a82f7;
	padding-bottom: 5px;
}

.form-group {
	display: flex;
	justify-content: space-between;
	gap: 20px;
	margin-bottom: 20px;
}

.input-group {
	width: 48%;
	display: flex;
	flex-direction: column;
}

label {
	font-size: 14px;
	color: #555;
	margin-bottom: 5px;
}

input[type="text"], input[type="email"], input[type="tel"], input[type="date"]
	{
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

button {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 5px;
	background-color: #3a82f7;
	color: white;
	font-size: 16px;
	cursor: pointer;
	margin-top: 20px;
}

button:hover {
	background-color: #2a6bc4;
}
</style>
<script src="resources/js/inputCheck.js"></script>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String topic = request.getParameter("topic");
	String phone = request.getParameter("phone");
	String message = request.getParameter("message");
	String idcontact = request.getParameter("idcontact");
	%>



	<div class="container">
		<div class="form-container">
			<h2>Contact Form Section</h2>
			<form action="contactUpdate" method="post">
				<div class="section-title">Conatct Form OwnerDetails</div>
				<div class="form-group">


					<div class="input-group">
						<label for="fullName">Full Name</label> <input type="text"
							name="name" value="<%=name%>" required>
					</div>


					<div class="input-group">
						<label for="Email">Email</label> <input type="text" name="email"
							value="<%=email%>" required>
					</div>

				</div>


				<div class="form-group">
					<div class="select-group">
						<label for="Form Topic">Topic</label> <br> <select
							name="topic" id="topic" width="50px">
							<option value="General Inquiry">General Inquiry</option>
							<option value="Feedback">Feedback</option>
							<option value="Complaint">Complaint</option>
							<option value="Appointment Request">Appointment Request
							</option>
						</select>
					</div>


					<div class="input-group">
						<label for="img">Contact Number</label><br> <input
							type="text" name="phone" value="<%=phone%>">
					</div>
				</div>

				<div class="form-group">
					<div class="input-group">
						<label for="Product Description">Message</label> <input
							type="text" name="message" value="<%=message%>" required>
					</div>


				</div>
				<input type="text" name="idcontact" value="<%=idcontact%>" hidden>




				<button type="submit" onClick="inputCheck.js">Submit Form</button>




			</form>


		</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		
		<form action="AmbulanceDriverLoginServlet" method="post">
			username <input type="text" name="uname"><br>
			password <input type="text" name="pass"><br>
			<br><br>
			
			<input type="submit" value="login" name="subbtn">
		</form>
		
		<form action="LoginAdminServlet" method="post">
			username <input type="text" name="uname"><br>
			password <input type="text" name="pass"><br>
			<br><br>
			
			<input type="submit" value="login" name="subbtn">
		</form>
	
		<form action="RegisteringUserServlet" method="post" enctype="multipart/form-data">
			name <input type="text" name="name"><br>
			tele <input type="text" name="tele"><br>
			address <input type="text" name="add"><br>
			email <input type="text" name="email"><br>
			dob <input type="text" name="dob"><br>
			username <input type="text" name="uname"><br>
			password <input type="text" name="pass"><br>
			profilePicture <input type="file" name="propic" multiple="true"><br>
			<br><br>
			
			<input type="submit" value="register" name="subbtn">
		</form>
		
		<!-- registration of ambulance driver -->
		
		<form action="RegisteringAmbulanceDriversServlet" method="post">
			name <input type="text" name="name"><br>
			tele <input type="text" name="telep"><br>
			address <input type="text" name="add"><br>
			email <input type="text" name="email"><br>
			dob <input type="text" name="dob"><br>
			License Number <input type="text" name="licenseNum"><br>
			Years of Experience <input type="text" name="years"><br>
			<br><br>
			
			<input type="submit" value="register" name="subbtn">
		</form>
		
		<!-- registration of paramedics -->
		
		<form action="RegisteringParamedicsServlet" method="post">
			name <input type="text" name="name"><br>
			tele <input type="text" name="telep"><br>
			address <input type="text" name="add"><br>
			email <input type="text" name="email"><br>
			dob <input type="text" name="dob"><br>
			NIC <input type="text" name="nic"><br>
			Years of Experience <input type="text" name="years"><br>
			<br><br>
			
			<input type="submit" value="register" name="subbtn">
		</form>
		
		
	
	</body>
</html>
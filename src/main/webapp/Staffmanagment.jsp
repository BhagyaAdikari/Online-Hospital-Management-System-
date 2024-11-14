<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<!-- Form to collect staff management details -->
<form action="Staffmanagmentinsert" method="post">
 
 
    <!-- Input fields for staff details -->
    name <input type="text" name="name"><br>
    Email <input type="text" name="email"><br>
    specialization <input type="text" name="specialization"><br>
    salary <input type="text" name="salary"><br>
    phoneNumber <input type="text" name="phoneNumber"><br>
    description <input type="text" name="description"><br>
  
      <!-- Submit button to create a new staff entry -->
    <input type ="submit" name="submit" value="create Staffmanagment" >
</form>
 
 
 
</body>
</html>
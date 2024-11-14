<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Page title -->
<title>Insert title here</title>

<!-- Inline CSS styles for the page -->
<style>
	/* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #f5f5f5;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    padding: 20px;
}

h1 {
    font-size: 36px;
    color: #007bff;
    margin-bottom: 20px;
    text-align: center;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

table {
    width: 60%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: white;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

td {
    padding: 15px;
    border-bottom: 1px solid #ddd;
}

tr:last-child td {
    border-bottom: none;
}

td:first-child {
    font-weight: bold;
    color: #333;
    text-align: right;
}

td h2 {
    font-size: 22px;
    color: #555;
}

input[type="button"] {
    padding: 10px 20px;
    margin: 10px 0;
    font-size: 16px;
    border: none;
    background-color: #007bff;
    color: white;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="button"]:hover {
    background-color: #0056b3;
}

a {
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

/* Table styling */
table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e9ecef;
}
	
</style>

</head>
<body>
<!-- Main heading -->
<h1>StaffmanagmentSystem</h1>




<!-- Iterating over the 'stuffDetails' list using JSTL 'forEach' -->

<c:forEach var="stuff" items="${stuffDetails}">


    <!-- Setting variables for each property of 'stuff' object -->

        <c:set var="id" value="${stuff.id}"/>
		<c:set var="name" value="${stuff.name}"/>
		<c:set var="email" value="${stuff.email}"/>
		<c:set var="specialization" value="${stuff.specialization}"/>
		<c:set var="salary" value="${stuff.salary}"/>
		<c:set var="phoneNumber" value="${stuff.phoneNumber}"/>
		<c:set var="description" value="${stuff.description}"/>
		
		    <!-- Displaying details of 'stuff' in a table -->
		<table>
			<tr>
 
				<td>Staff Id :</td>
				<td><h2>${stuff.id}</h2></td>
			</tr>
			<tr>
				<td>Staff Name :</td>
				<td><h2>${stuff.name}</h2></td>
			</tr>
			
			<tr>
 
				<td>Staff Email :</td>
				<td><h2>${stuff.email}</h2></td>
			</tr>
			
			<tr>
				<td>Staff specialization :</td>
				<td><h2>${stuff.specialization}</h2></td>
			</tr>
			
			<tr>
				<td>Staff salary :</td>	
				<td><h2>${stuff.salary}</h2></td>
			</tr>
			
			<tr>
				<td>Staff phoneNumber :</td>
				<td><h2>${stuff.phoneNumber}</h2></td>
			</tr>
			
			<tr>
				<td>Staff description :</td>
				<td><h2>${stuff.description}</h2></td>
			</tr>
			
			
 
 
		</c:forEach>
		</table>
		
		<!-- URL for updating staff details -->
		<c:url value="updateStaffmanagment.jsp" var="stuffupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="specialization" value="${specialization}"/>
		<c:param name="salary" value="${salary}"/>
		<c:param name="phoneNumber" value="${phoneNumber}"/>
		<c:param name="description" value="${description}"/>
		</c:url>
		
		<a href="${stuffupdate}">
		<input type="button" name="update" value="update my data">
		</a>
		
		<br>
		
		<!-- Button for updating staff details -->
		<c:url value="deleteStaffmanagment.jsp" var="stuffdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="specialization" value="${specialization}"/>
		<c:param name="salary" value="${salary}"/>
		<c:param name="phoneNumber" value="${phoneNumber}"/>
		<c:param name="description" value="${description}"/>
		</c:url>
		
		<!-- Button for deleting staff details -->
		<a href="${stuffdelete}">
		<input type="button" name="delete" value="delete my account">
		
		</a>
		

</body>
</html>
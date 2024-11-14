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
<script src="resources/js/inputCheck.js"></script>
<style>body {
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
</head>
<body>
	<%
	String name = request.getParameter("name");
	String editorName = request.getParameter("editorName");
	String content = request.getParameter("content");
	String author = request.getParameter("author");
	String img = request.getParameter("img");
	String idblog = request.getParameter("idblog");

	String staffID = request.getParameter("StaffID");
	%>


	
	<div class="container">
		<div class="form-container">
			<h2>Blog</h2>
			<form name="blogUpdate" action="blogUpdate" method="post" enctype="multipart/form-data"  onsubmit="return validateFormBlog()">
				  <div class="section-title">Blog Details</div>
				<div class="form-group">


					<div class="input-group">
						<label for="fullName">Blog Name</label>
						 <input type="text" name="name" placeholder="<%=name%>" >
					</div>


					<div class="input-group">
						<label for="Product Category">Blog Content</label> 
						<input type="text" name="content" placeholder="<%=content%>" >
					</div>

				</div>


				<div class="form-group">
					<div class="input-group">
						<label for="Product Description">Author</label> 
						<input type="text" name="author" placeholder="<%=author%>" >
					</div>


					<div class="input-group">
						<label for="img">Product Image</label><br> 
						<input type="file" 	name="img" value="<%=img%>" >
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group">
						<label for="Product Description">Editor Name</label> 
						<input	type="text" name="editorName" placeholder="<%=editorName%>" >
					</div>


					<div class="input-group">
						<label for="img">Author staff ID</label>
						<input type="text"	name="staffID" placeholder="<%=staffID%>" >
					</div>
				</div>
				<input type="text" name="idblog" value="<%=idblog%>" hidden>
				

				<input type="submit" name="submit" value="Update Blog">

				<button type="submit">Submit Form</button>
				
				
				
				
			</form>
		

		</div>
	</div>
	
</body>
</html>
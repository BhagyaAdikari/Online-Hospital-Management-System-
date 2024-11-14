<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<link rel="stylesheet" href="styles.css">
<title>Pharmacy insert</title>
<script src="resources/js/inputCheck.js"></script>
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
</head>
<body>

	<div class="container">
		<div class="form-container">
			<h2>Blog</h2>
			<form name="blogInsert"action="blogInsert" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
				  <div class="section-title">Blog Details</div>
				<div class="form-group">


					<div class="input-group">
						<label for="fullName">Blog Name</label>
						 <input type="text" name="name" placeholder="Enter Blog Name">
					</div>


					<div class="input-group">
						<label for="Product Category">Blog Content</label> 
						<input type="text" name="content" placeholder="Enter Blog Category" >
					</div>

				</div>


				<div class="form-group">
					


					<div class="input-group">
						<label for="img">Product Image</label><br> 
						<input type="file" 	name="img" placeholder="Upload blog image" >
					</div>
				
					<div class="input-group">
						<label for="img">Author Display Name :</label>
						<input type="text"	name="author" placeholder="Enter Author Display Name" >
					</div>
				</div>
				
				<div class="form-group">
					


					<div class="input-group">
						<label for="img">User ID</label><br> 
						<input type="text" 	name="id" placeholder="Upload blog image" >
					</div>
				
				</div>
				
		
				<input type="submit" name="submit" value="Insert Blog">

				
				
				
				
				
			</form>
		

		</div>
	</div>
	

</body>
</html>
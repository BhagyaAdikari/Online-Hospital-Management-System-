<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
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
	<%
	String name = request.getParameter("name");
	String cate = request.getParameter("cate");
	String price = request.getParameter("price");
	String avail = request.getParameter("avail");
	String img = request.getParameter("img");
	String des = request.getParameter("des");
	String idt1 = request.getParameter("idt1");
	String storageConditions = request.getParameter("storageConditions");
	String ageRestriction = request.getParameter("ageRestriction");
	String usageInstructions = request.getParameter("usageInstructions");
	%>


	<div class="container">


		<div class="form-container">
			<br>
			<br>
			<h2>Pharmacy</h2>
			<form name="pharUpdate" action="PharUpdate" method="post"
				enctype="multipart/form-data" onsubmit="validateForm2()">
				<div class="section-title">Product Details</div>
				<div class="form-group">


					<div class="input-group">
						<label for="fullName">Product Name</label> <input type="text"
							name="name" value="<%=name%>" required>
					</div>


					<div class="input-group">
						<label for="Product Category">Product Category</label> <input
							type="text" name="cate" value="<%=cate%>">
					</div>

				</div>


				<div class="form-group">
					<div class="input-group">
						<label for="Product Description">Product Description</label> <input
							type="text" name="des" value="<%=des%>">
					</div>


					<div class="input-group">
						<label for="Product Price">Product Price</label> <input
							type="text" name="price" value="<%=price%>">
					</div>
				</div>


				<div class="form-group">
					<div class="input-group">
						<label for="Product Availability">Product Availability</label> <input
							type="text" name="avail" value="<%=avail%>">
					</div>


					<div class="input-group">
						<label for="img">Product Image</label><br> <input type="file"
							name="img" value="Upload product image">
					</div>
				</div>
				<br>
				<center>
					<h2>Over The Counter Medicine Details</h2>
				</center>
				<br>

				<div class="form-group">



					<div class="input-group">
						<label for="Product Availability">Product Age Restriction
							(If available)</label> <input type="text" name="ageRestriction"
							value="<%=ageRestriction%>">
					</div>


					<div class="input-group">
						<label for="Product usageInstruction">Product Usage
							Instructions (If available)</label> <input type="text"
							name="usageInstructions" value="<%=usageInstructions%>">
					</div>
				</div>

				<br>
				<center>
					<h2>Doctor Prescription Required Medicine Details</h2>
				</center>
				<br>

				<div class="form-group">



					<div class="input-group">
						<label for="Product storageConditions">Product storage
							Conditions</label> <input type="text" name="storageConditions"
							value="<%=storageConditions%>">
					</div>

					<input type="text" name="idt1"
						value="<%=idt1%>">

				</div>

				<input type="submit" name="submit" value="Update Pharmacy Product">

				<button type="submit">Submit Form</button>
			</form>
		</div>
	</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="styles.css">
<title>Pharmacy insert</title>
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
			<h2>Pharmacy</h2>
			<form name="PharInsert" action="PharProductInsert" method="post" enctype="multipart/form-data" onsubmit="validateForm2()">
				<div class="section-title">Product Details</div>
				<div class="form-group">


					<div class="input-group">
						<label for="fullName">Product Name</label> <input type="text" name="name" placeholder="Enter Product Name" required>
					</div>


					<div class="input-group">
						<label for="Product Category">Product Category</label> <input
							type="text" name="cate" placeholder="Enter Product Category" >
					</div>

				</div>


				<div class="form-group">
					<div class="input-group">
						<label for="Product Description">Product Description</label> <input
							type="text" name="des" placeholder="Enter Product Description" >
					</div>


					<div class="input-group">
						<label for="Product Price">Product Price</label> <input
							type="text" name="price" placeholder="Enter Product Price" >
					</div>
				</div>


				<div class="form-group">
					<div class="input-group">
						<label for="Product Availability">Product Availability</label> <input
							type="text" name="avail" placeholder="Enter Product Availability">
					</div>


					<div class="input-group">
						<label for="img">Product Image</label><br> <input type="file"
							name="img" placeholder="Upload product image">
					</div>
				</div>
				<br><center><h2>Over The Counter Medicine Details</h2></center><br>
				
				<div class="form-group">
					
					
				
					<div class="input-group">
						<label for="Product Availability">Product Age Restriction (If available)</label> <input
							type="text" name="ageRestriction" placeholder="Enter Product Age Restriction" >
					</div>


					<div class="input-group">
						<label for="Product usageInstruction">Product Usage Instructions (If available)</label> <input
							type="text" name="usageInstructions" placeholder="Enter Product Usage Instrunctions" >
					</div>
				</div>
				
				<br><center><h2>Doctor Prescription Required Medicine Details</h2></center><br>
				
				<div class="form-group">
				
				
				
					<div class="input-group">
						<label for="Product storageConditions">Product storage Conditions</label> <input
							type="text" name="storageConditions" placeholder="Enter Product storage Conditions" >
					</div>


					
				</div>

				<input type="submit" name="submit" value="Insert Pharmacy Product">

				<button type="submit">Submit Form</button>
			</form>
		</div>
	</div>

</body>
</html>
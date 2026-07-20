<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	background: #f5f5f5;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	background: white;
	padding: 30px;
	border-radius: 10px;
	width: 450px;
	box-shadow: 0 0 10px rgba(0,0,0,0.2);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input, select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	width: 100%;
	padding: 12px;
	background: #28a745;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background: #218838;
}
</style>

</head>
<body>

	<div class="container">

		<h2>Add Book</h2>

		<form action="saveBook" method="post">

			<div class="form-group">
				<label>Book Title</label>
				<input type="text" name="title" required>
			</div>

			<div class="form-group">
				<label>Author</label>
				<input type="text" name="author" required>
			</div>

			<div class="form-group">
				<label>Category</label>
				<select name="category">
					<option value="">--Select Category--</option>
					<option>Programming</option>
					<option>Java</option>
					<option>Spring Boot</option>
					<option>Database</option>
					<option>Science</option>
					<option>History</option>
					<option>Novel</option>
					<option>Biography</option>
				</select>
			</div>

			<div class="form-group">
				<label>Price</label>
				<input type="number" name="price" step="0.01" required>
			</div>

			<div class="form-group">
				<label>Publisher</label>
				<input type="text" name="publisher" required>
			</div>

			<div class="form-group">
				<label>Publish Date</label>
				<input type="date" name="publish_date" required>
			</div>

			<div class="form-group">
				<label>Quantity</label>
				<input type="number" name="quantity" required>
			</div>

			<button type="submit">Save Book</button>

		</form>

	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Cricketer</title>

<style>

body{
	font-family:Arial, sans-serif;
	background:#f2f2f2;
}

.container{
	width:500px;
	margin:40px auto;
	background:white;
	padding:25px;
	border-radius:10px;
	box-shadow:0px 0px 10px gray;
}

h2{
	text-align:center;
	color:darkblue;
}

table{
	width:100%;
}

td{
	padding:10px;
}

input[type=text],
input[type=number]{
	width:100%;
	padding:8px;
	border:1px solid #ccc;
	border-radius:5px;
	box-sizing:border-box;
}

/* Success Message */
.success{
	background:#d4edda;
	color:#155724;
	border:1px solid #c3e6cb;
	padding:10px;
	border-radius:5px;
	margin-bottom:15px;
	text-align:center;
	font-weight:bold;
}

/* Buttons */
.button-group{
	display:flex;
	justify-content:space-between;
	margin-top:15px;
}

.add-btn{
	width:48%;
	padding:10px;
	background:green;
	color:white;
	border:none;
	border-radius:5px;
	font-size:16px;
	cursor:pointer;
}

.add-btn:hover{
	background:darkgreen;
}

.home-btn{
	width:48%;
	padding:10px;
	background:#007bff;
	color:white;
	border:none;
	border-radius:5px;
	font-size:16px;
	cursor:pointer;
}

.home-btn:hover{
	background:#0056b3;
}

</style>

</head>
<body>

<div class="container">

	<h2>Add Cricketer</h2>

	<c:if test="${not empty msg}">
		<div class="success">
			${msg}
		</div>
	</c:if>

	<form action="savePlayer" method="post">

		<table>

			<tr>
				<td>Player Name</td>
				<td><input type="text" name="playerName" required></td>
			</tr>

			<tr>
				<td>Team Name</td>
				<td><input type="text" name="teamName" required></td>
			</tr>

			<tr>
				<td>Role</td>
				<td>
					<input type="text" name="role"
					placeholder="Batsman / Bowler / All Rounder / Wicket Keeper"
					required>
				</td>
			</tr>

			<tr>
				<td>Batting Style</td>
				<td>
					<input type="text" name="battingStyle"
					placeholder="Right Hand / Left Hand"
					required>
				</td>
			</tr>

			<tr>
				<td>Jersey Number</td>
				<td><input type="number" name="jersyNumber" required></td>
			</tr>

			<tr>
				<td colspan="2">

					<div class="button-group">

						<input type="submit"
							   value="Add Player"
							   class="add-btn">

						<input type="button"
							   value="Home"
							   class="home-btn"
							   onclick="location.href='home'">

					</div>

				</td>
			</tr>

		</table>

	</form>

</div>

</body>
</html>
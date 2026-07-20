<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cricketer Management System</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:'Segoe UI',sans-serif;
}

body{
	height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
	background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
	overflow:hidden;
}

body::before{
	content:"";
	position:absolute;
	width:350px;
	height:350px;
	background:rgba(255,255,255,.08);
	border-radius:50%;
	top:-120px;
	left:-120px;
}

body::after{
	content:"";
	position:absolute;
	width:300px;
	height:300px;
	background:rgba(255,255,255,.08);
	border-radius:50%;
	bottom:-100px;
	right:-100px;
}

.container{
	position:relative;
	z-index:2;
	width:700px;
	background:rgba(255,255,255,.12);
	backdrop-filter:blur(18px);
	padding:45px;
	border-radius:20px;
	text-align:center;
	border:1px solid rgba(255,255,255,.25);
	box-shadow:0 20px 45px rgba(0,0,0,.4);
}

.logo{
	font-size:70px;
	margin-bottom:10px;
}

h1{
	color:white;
	font-size:36px;
	margin-bottom:15px;
}

p{
	color:#e0e0e0;
	font-size:18px;
	line-height:28px;
	margin-bottom:35px;
}

.button-group{
	display:flex;
	justify-content:center;
	gap:20px;
	flex-wrap:wrap;
}

.btn{
	padding:15px 28px;
	text-decoration:none;
	font-size:18px;
	font-weight:bold;
	border-radius:10px;
	color:white;
	display:flex;
	align-items:center;
	gap:10px;
	transition:.35s;
	min-width:220px;
	justify-content:center;
}

.add{
	background:#00c853;
}

.add:hover{
	background:#009624;
	transform:translateY(-4px);
	box-shadow:0 10px 20px rgba(0,200,83,.5);
}

.report{
	background:#ff9800;
}

.report:hover{
	background:#ef6c00;
	transform:translateY(-4px);
	box-shadow:0 10px 20px rgba(255,152,0,.5);
}

.footer{
	margin-top:40px;
	color:#ddd;
	font-size:15px;
	border-top:1px solid rgba(255,255,255,.2);
	padding-top:20px;
}

.footer i{
	color:#4caf50;
}

</style>

</head>
<body>

<div class="container">

	<div class="logo">🏏</div>

	<h1>Cricketer Management System</h1>

	<p>
		Manage Cricketer Records efficiently using
		<strong>Spring Boot</strong>,
		<strong>JSP</strong>,
		and
		<strong>MySQL</strong>.
		Add, View, Update and Delete player details with ease.
	</p>

	<div class="button-group">

		<a href="addCricketer" class="btn add">
			<i class="fa-solid fa-user-plus"></i>
			Add Cricketer
		</a>

		<a href="report" class="btn report">
			<i class="fa-solid fa-table-list"></i>
			View Report
		</a>

	</div>

	<div class="footer">
		<i class="fa-solid fa-code"></i>
		Developed using Spring Boot | JSP | MySQL
	</div>

</div>

</body>
</html>
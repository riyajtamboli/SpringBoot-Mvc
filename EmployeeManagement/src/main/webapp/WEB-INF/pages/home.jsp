<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:550px;
    background:white;
    padding:40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.container h1{
    color:#0d6efd;
    margin-bottom:15px;
}

.container p{
    color:#555;
    margin-bottom:30px;
}

.btn{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:15px;
    text-decoration:none;
    background:#0d6efd;
    color:white;
    padding:15px;
    border-radius:8px;
    font-size:20px;
    font-weight:bold;
    transition:0.3s;
    margin:15px auto;
    width:280px;
}

.btn:hover{
    background:#084298;
    transform:translateY(-3px);
}

.btn img{
    width:40px;
    height:40px;
}

</style>

</head>
<body>

<c:url var="reportUrl" value="/report"/>
<c:url var="reportImage" value="/images/report.png"/>

<c:url var="addEmployeeUrl" value="/addEmployee"/>
<c:url var="addEmployeeImage" value="/images/edit.png"/>

<div class="container">

    <h1>Employee Management System</h1>

    <p>Welcome to Spring MVC Mini Project</p>

    <!-- Generate Report Button -->
    <a href="report" class="btn">
        <img src="${reportImage}" alt="Report">
        Generate Report
    </a>

    <!-- Save Employee Button -->
    <a href="addEmployee" class="btn">
        <img src="${addEmployeeImage}" alt="Add Employee">
        Save Employee
    </a>

</div>

</body>
</html>
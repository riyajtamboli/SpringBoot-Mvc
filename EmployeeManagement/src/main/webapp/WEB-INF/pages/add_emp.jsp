<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.container{
    width:400px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    margin-bottom:20px;
    color:#333;
}

.input-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:5px;
    font-weight:bold;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:15px;
}

button{
    width:100%;
    padding:10px;
    border:none;
    background:#007bff;
    color:white;
    font-size:16px;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#0056b3;
}
</style>

</head>
<body>

<div class="container">

<h2>Add Employee</h2>

<form action="saveEmployee" method="post">

    <div class="input-group">
        <label>Employee Name</label>
        <input type="text" name="name" placeholder="Enter Employee Name" required>
    </div>

    <div class="input-group">
        <label>Department</label>
        <input type="text" name="department" placeholder="Enter Department" required>
    </div>

    <div class="input-group">
        <label>Salary</label>
        <input type="number" name="salary" placeholder="Enter Salary" required>
    </div>

    <button type="submit">Save Employee</button>

</form>

</div>

</body>
</html>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>

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
    width:420px;
    background:#fff;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.container h1{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:18px;
}

label{
    display:block;
    font-weight:bold;
    margin-bottom:8px;
    color:#333;
}

input, textarea{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:15px;
    outline:none;
}

input:focus,
textarea:focus{
    border-color:#0d6efd;
    box-shadow:0 0 5px rgba(13,110,253,0.4);
}

textarea{
    resize:none;
    height:80px;
}

.btn{
    width:100%;
    padding:12px;
    background:#0d6efd;
    color:white;
    border:none;
    border-radius:6px;
    font-size:17px;
    cursor:pointer;
    transition:.3s;
}

.btn:hover{
    background:#084298;
}

.back{
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    color:#0d6efd;
    font-weight:bold;
}

.back:hover{
    text-decoration:underline;
}
</style>

</head>
<body>

<div class="container">

    <h1>Employee Registration</h1>

    <form action="register" method="post">

        <div class="form-group">
            <label>Employee ID</label>
            <input type="text" name="id" placeholder="Enter Employee ID" required>
        </div>

        <div class="form-group">
            <label>Employee Name</label>
            <input type="text" name="name" placeholder="Enter Employee Name" required>
        </div>

        <div class="form-group">
            <label>Address</label>
            <textarea name="address" placeholder="Enter Address" required></textarea>
        </div>

        <div class="form-group">
            <label>Salary</label>
            <input type="number" step="0.01" name="salary" placeholder="Enter Salary" required>
        </div>

        <button type="submit" class="btn">Register Employee</button>

    </form>

    <a href="./" class="back">Back to Home</a>

</div>

</body>
</html>
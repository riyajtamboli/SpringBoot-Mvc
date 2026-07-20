<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result Page</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#4facfe,#00f2fe);
}

.container{
    width:450px;
    background:#fff;
    padding:35px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

h1{
    color:#0d6efd;
    margin-bottom:25px;
}

.result{
    background:#e9f7ef;
    border-left:5px solid #28a745;
    color:#155724;
    padding:15px;
    font-size:20px;
    font-weight:bold;
    border-radius:8px;
    margin-bottom:25px;
}

.btn{
    display:inline-block;
    padding:12px 25px;
    background:#0d6efd;
    color:white;
    text-decoration:none;
    border-radius:8px;
    font-size:17px;
    transition:0.3s;
}

.btn:hover{
    background:#084298;
    transform:scale(1.05);
}
</style>

</head>
<body>

<div class="container">

    <h1>Employee Registration Result</h1>

    <div class="result">
        Salary Information: <br><br>
        ${salaryType}
    </div>

    <a href="./" class="btn">Back to Home</a>

</div>

</body>
</html>
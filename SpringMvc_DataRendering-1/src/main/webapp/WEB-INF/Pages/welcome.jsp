<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

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
    background:#fff;
    padding:40px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
    text-align:center;
    width:400px;
}

h1{
    color:#0d6efd;
    margin-bottom:30px;
}

a{
    text-decoration:none;
    background:#0d6efd;
    color:white;
    padding:12px 25px;
    border-radius:8px;
    font-size:18px;
    transition:.3s;
    display:inline-block;
}

a:hover{
    background:#084298;
    transform:scale(1.05);
}
</style>

</head>
<body>

<div class="container">
    <h1>Welcome to Spring Boot MVC</h1>

    <a href="register">Register Employee</a>
</div>

</body>
</html>
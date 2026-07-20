<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management System</title>

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
    padding:40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,.25);
}

.container h1{
    color:#333;
    margin-bottom:10px;
}

.container p{
    color:#666;
    margin-bottom:35px;
}

.btn{
    display:block;
    width:100%;
    text-decoration:none;
    color:#fff;
    padding:15px;
    margin:15px 0;
    border-radius:8px;
    font-size:18px;
    font-weight:bold;
    transition:.3s;
}

.add{
    background:#28a745;
}

.add:hover{
    background:#218838;
    transform:translateY(-3px);
}

.view{
    background:#007bff;
}

.view:hover{
    background:#0056b3;
    transform:translateY(-3px);
}

.footer{
    margin-top:25px;
    color:#888;
    font-size:14px;
}
</style>

</head>
<body>

<div class="container">

    <h1>Book Management System</h1>

    <p>Manage your books quickly and efficiently.</p>

    <a href="addBook" class="btn add">Add Book</a>

    <a href="viewBooks" class="btn view">View Books</a>

    <div class="footer">
        Spring Boot | JSP | MySQL
    </div>

</div>

</body>
</html>
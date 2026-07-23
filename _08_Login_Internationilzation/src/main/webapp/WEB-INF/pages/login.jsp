<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="sp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sp:message code="login.title"/></title>

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
    width:380px;
    background:#fff;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,.2);
}

.language{
    text-align:right;
    margin-bottom:20px;
}

.language a{
    text-decoration:none;
    color:#007bff;
    font-weight:bold;
    margin:0 5px;
}

.language a:hover{
    text-decoration:underline;
}

h2{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

.form-group{
    margin-bottom:20px;
}

label{
    display:block;
    font-weight:bold;
    margin-bottom:8px;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
}

.buttons{
    display:flex;
    justify-content:space-between;
}

button{
    width:48%;
    padding:10px;
    border:none;
    border-radius:5px;
    color:white;
    cursor:pointer;
    font-size:16px;
}

.login-btn{
    background:#28a745;
}

.reset-btn{
    background:#dc3545;
}
</style>

</head>
<body>

<div class="container">

    <div class="language">
        <a href="?lang=en_US">English</a> |
        <a href="?lang=hi_IN">हिन्दी</a> |
        <a href="?lang=mr_IN">मराठी</a>
    </div>

    <h2>
        <sp:message code="login.title"/>
    </h2>

    <form action="login" method="post">

        <div class="form-group">
            <label>
                <sp:message code="username"/>
            </label>

            <input type="text"
                   name="username"
                   placeholder="Enter Username">
        </div>

        <div class="form-group">
            <label>
                <sp:message code="password"/>
            </label>

            <input type="password"
                   name="password"
                   placeholder="Enter Password">
        </div>

        <div class="buttons">

            <button type="submit" class="login-btn">
                <sp:message code="login"/>
            </button>

            <button type="reset" class="reset-btn">
                <sp:message code="reset"/>
            </button>

        </div>

    </form>

</div>

</body>
</html>
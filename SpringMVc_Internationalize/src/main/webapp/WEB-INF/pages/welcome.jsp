<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sp"%>

<html>
<head>
<title>Home</title>
</head>
<body>

<h1 style="color:red;text-align:center">
    <sp:message code="home.title"/>
</h1>

<h3 style="text-align:center">
    <a href="register">
        <sp:message code="home.link"/>
    </a>
</h3>

<br><br>

<center>
    <a href="?lang=en">English</a> &nbsp;&nbsp;

    <a href="?lang=hi_IN">Hindi</a> &nbsp;&nbsp;

    <a href="?lang=fr_FR">French</a> &nbsp;&nbsp;

    <a href="?lang=mr_IN">Marathi</a>
</center>

</body>
</html>
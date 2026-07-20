<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<h1>Employee Details</h1>
	<h3><sp:message code="employee.name"/></h3> <br> <br>
	<h3><sp:message code="employee.department"/></h3> <br> <br>
	<a href="home?lang=hi_IN">Hindi</a>
</body>
</html>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Festival Success</title>
</head>
<body>

<h2>Festival Registration Successful</h2>

<table border="1" cellpadding="10">
    <tr>
        <th>ID</th>
        <td>${festival.id}</td>
    </tr>

    <tr>
        <th>Visitor Name</th>
        <td>${festival.visitorName}</td>
    </tr>

    <tr>
        <th>Festival Category</th>
        <td>${festival.festivalCategory}</td>
    </tr>

    <tr>
        <th>Pass Type</th>
        <td>${festival.passType}</td>
    </tr>

    <tr>
        <th>Visiting Day</th>
        <td>${festival.visitingDay}</td>
    </tr>

    <tr>
        <th>Email</th>
        <td>${festival.email}</td>
    </tr>
</table>

</body>
</html>
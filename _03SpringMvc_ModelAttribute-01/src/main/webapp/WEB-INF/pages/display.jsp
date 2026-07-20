<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    font-family:Arial, Helvetica, sans-serif;
}

.container{
    width:500px;
    margin:80px auto;
}

.card{
    border:none;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,.3);
}

.card-header{
    background:#0d6efd;
    color:white;
    text-align:center;
    font-size:28px;
    font-weight:bold;
}

.table th{
    width:40%;
}

.btn{
    width:100%;
}
</style>

</head>
<body>

<div class="container">

    <div class="card">

        <div class="card-header">
            Student Details
        </div>

        <div class="card-body">

            <table class="table table-bordered">
                <tr>
                    <th>Student ID</th>
                    <td>${student.id}</td>
                </tr>

                <tr>
                    <th>Student Name</th>
                    <td>${student.name}</td>
                </tr>

                <tr>
                    <th>Student Course</th>
                    <td>${student.course}</td>
                </tr>

                <tr>
                    <th>Mobile Number</th>
                    <td>${student.mobileNo}</td>
                </tr>
            </table>

            <a href="index" class="btn btn-primary">
                Back to Home
            </a>

        </div>

    </div>

</div>

</body>
</html>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Report</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    min-height:100vh;
    padding:40px;
}

.container{
    width:95%;
    margin:auto;
    background:#fff;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,.2);
}

h1{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
}

.top-bar{
    display:flex;
    justify-content:space-between;
    margin-bottom:20px;
}

.home-btn,
.add-btn{
    text-decoration:none;
    color:white;
    padding:10px 20px;
    border-radius:8px;
    font-weight:bold;
}

.home-btn{
    background:#198754;
}

.home-btn:hover{
    background:#157347;
}

.add-btn{
    background:#0d6efd;
}

.add-btn:hover{
    background:#084298;
}

.success-msg{
    background:#d4edda;
    color:#155724;
    border:1px solid #c3e6cb;
    padding:12px;
    border-radius:8px;
    text-align:center;
    margin-bottom:20px;
    font-weight:bold;
    transition:opacity .5s ease;
}

table{
    width:100%;
    border-collapse:collapse;
}

thead{
    background:#0d6efd;
    color:white;
}

th,td{
    border:1px solid #ddd;
    padding:14px;
    text-align:center;
}

tbody tr:nth-child(even){
    background:#f8f9fa;
}

tbody tr:hover{
    background:#d6ecff;
}

.edit-btn,
.delete-btn{
    text-decoration:none;
    color:white;
    padding:8px 15px;
    border-radius:5px;
    font-weight:bold;
}

.edit-btn{
    background:#ffc107;
    color:black;
}

.edit-btn:hover{
    background:#e0a800;
}

.delete-btn{
    background:#dc3545;
}

.delete-btn:hover{
    background:#bb2d3b;
}

.no-data{
    color:red;
    font-size:18px;
    font-weight:bold;
    padding:20px;
}

</style>

</head>
<body>

<div class="container">

    <h1>Employee Report</h1>

    <div class="top-bar">
        <a href="./" class="home-btn">Home</a>
        <a href="addEmployee" class="add-btn">Add Employee</a>
    </div>

    <c:if test="${not empty msg}">
        <div id="successMsg" class="success-msg">
            ${msg}
        </div>
    </c:if>

    <table>

        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>

        <tbody>

        <c:choose>

            <c:when test="${not empty employees}">

                <c:forEach var="employee" items="${employees}">

                    <tr>

                        <td>${employee.id}</td>
                        <td>${employee.name}</td>
                        <td>${employee.department}</td>
                        <td>${employee.salary}</td>

                        <td>
                            <a href="editEmployee?id=${employee.id}" class="edit-btn">
                                Edit
                            </a>
                        </td>

                        <td>
                            <a href="deleteEmployee?id=${employee.id}"
                               class="delete-btn"
                               onclick="return confirm('Are you sure you want to delete this employee?')">
                                Delete
                            </a>
                        </td>

                    </tr>

                </c:forEach>

            </c:when>

            <c:otherwise>

                <tr>
                    <td colspan="6" class="no-data">
                        No Employee Records Found
                    </td>
                </tr>

            </c:otherwise>

        </c:choose>

        </tbody>

    </table>

</div>

<script>

window.addEventListener("load", function(){

    const msg = document.getElementById("successMsg");

    if(msg){

        setTimeout(function(){

            msg.style.opacity = "0";

            setTimeout(function(){
                msg.style.display = "none";
            },500);

        },3000);

    }

});

</script>

</body>
</html>
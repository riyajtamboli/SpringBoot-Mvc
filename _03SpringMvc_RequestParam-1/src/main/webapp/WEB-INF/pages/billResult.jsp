<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electricity Bill Result</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:420px;
    background:#fff;
    border-radius:12px;
    padding:30px;
    box-shadow:0 8px 20px rgba(0,0,0,0.25);
}

h2{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
}

table{
    width:100%;
    border-collapse:collapse;
}

table tr td{
    padding:12px;
    border-bottom:1px solid #ddd;
    font-size:18px;
}

table tr td:first-child{
    font-weight:bold;
    color:#444;
}

table tr td:last-child{
    text-align:right;
    color:#198754;
    font-weight:bold;
}

.btn{
    display:block;
    width:100%;
    margin-top:25px;
    text-align:center;
    text-decoration:none;
    background:#0d6efd;
    color:white;
    padding:12px;
    border-radius:6px;
    font-size:18px;
    transition:.3s;
}

.btn:hover{
    background:#0b5ed7;
}
</style>

</head>
<body>

<div class="container">

    <h2>Electricity Bill</h2>

    <table>
        <tr>
            <td>Name</td>
            <td>${name}</td>
        </tr>

        <tr>
            <td>Units Consumed</td>
            <td>${unit}</td>
        </tr>

        <tr>
            <td>Total Bill</td>
            <td>${total}</td>
        </tr>
    </table>

    <a href="index" class="btn">Calculate Again</a>

</div>

</body>
</html>
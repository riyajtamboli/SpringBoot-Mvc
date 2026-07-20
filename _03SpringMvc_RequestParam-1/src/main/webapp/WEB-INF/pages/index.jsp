<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electricity Bill Calculator</title>

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
    width:400px;
    background:#fff;
    padding:30px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.25);
}

h2{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
}

.input-group{
    margin-bottom:18px;
}

label{
    display:block;
    margin-bottom:8px;
    font-weight:bold;
    color:#444;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:16px;
}

input:focus{
    outline:none;
    border-color:#0d6efd;
}

button{
    width:100%;
    padding:12px;
    background:#0d6efd;
    color:white;
    border:none;
    border-radius:6px;
    font-size:18px;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#0b5ed7;
}
</style>

</head>
<body>

<div class="container">

    <h2>Electricity Bill Calculator</h2>

    <form action="calculateUnit" method="post">

        <div class="input-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter Name" required>
        </div>

        <div class="input-group">
            <label>Units Consumed</label>
            <input type="number" name="unit" placeholder="Enter Units" required>
        </div>

        <button type="submit">Calculate Bill</button>

    </form>

</div>

</body>
</html>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Festival Pass Registration</title>

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
    background:linear-gradient(135deg,#6a11cb,#2575fc);
}

.container{
    width:420px;
    background:#fff;
    padding:35px;
    border-radius:15px;
    box-shadow:0 10px 30px rgba(0,0,0,.3);
}

.container h2{
    text-align:center;
    color:#2575fc;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:18px;
}

label{
    display:block;
    margin-bottom:6px;
    font-weight:bold;
    color:#444;
}

input{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:15px;
    transition:.3s;
}

input:focus{
    border-color:#2575fc;
    outline:none;
    box-shadow:0 0 8px rgba(37,117,252,.3);
}

button{
    width:100%;
    padding:13px;
    border:none;
    border-radius:8px;
    background:#2575fc;
    color:white;
    font-size:17px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;
}

button:hover{
    background:#1b5fd1;
    transform:scale(1.02);
}
</style>

</head>
<body>

<div class="container">

    <h2>Festival Pass Registration</h2>

    <form action="festival" method="post">

        <div class="form-group">
            <label>ID</label>
            <input type="text" name="id" placeholder="Enter ID">
        </div>

        <div class="form-group">
            <label>Visitor Name</label>
            <input type="text" name="visitorName" placeholder="Enter Visitor Name">
        </div>

        <div class="form-group">
            <label>Festival Category</label>
            <input type="text" name="festivalCategory" placeholder="Music / Food / Cultural">
        </div>

        <div class="form-group">
            <label>Pass Type</label>
            <input type="text" name="passType" placeholder="VIP / Premium / General">
        </div>

        <div class="form-group">
            <label>Visiting Day</label>
            <input type="number" name="visitingDay" placeholder="Enter Number of Days">
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter Email Address">
        </div>

        <button type="submit">Register Now</button>

    </form>

</div>

</body>
</html>
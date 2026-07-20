<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card{
    width:450px;
    border:none;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

.card-header{
    background:#0d6efd;
    color:white;
    text-align:center;
    font-size:28px;
    font-weight:bold;
    padding:18px;
    border-radius:15px 15px 0 0;
}

.card-body{
    padding:30px;
}

.form-control{
    height:45px;
}

.btn{
    width:100%;
    height:45px;
    font-size:18px;
}
</style>

</head>
<body>

<div class="card">
    <div class="card-header">
        Student Registration
    </div>

    <div class="card-body">
        <form action="submitForm" method="post">

            <div class="mb-3">
                <label class="form-label">Student ID</label>
                <input type="text" class="form-control" placeholder="Enter ID" name="id">
            </div>

            <div class="mb-3">
                <label class="form-label">Student Name</label>
                <input type="text" class="form-control" placeholder="Enter Name" name="name">
            </div>

            <div class="mb-3">
                <label class="form-label">Student Course</label>
                <input type="text" class="form-control" placeholder="Enter Course" name="course">
            </div>

            <div class="mb-3">
                <label class="form-label">Mobile Number</label>
                <input type="number" class="form-control" placeholder="Enter Mobile Number" name="mobileNo">
            </div>

            <button type="submit" class="btn btn-primary">
                Submit
            </button>

        </form>
    </div>
</div>

</body>
</html>
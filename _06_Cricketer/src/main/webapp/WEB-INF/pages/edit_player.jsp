<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Player</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background:#f5f5f5;
}

.card{
    width:550px;
    margin:50px auto;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
}
</style>

</head>
<body>

<div class="card">

<h2>✏ Edit Player</h2>

<form action="submit" method="post">

    <!-- Hidden ID -->
    <input type="hidden"
       name="playerId"
       value="${cricketer.playerId}">
    <div class="mb-3">
        <label>Player Name</label>
        <input type="text"
               class="form-control"
               name="playerName"
               value="${cricketer.playerName}">
    </div>

    <div class="mb-3">
        <label>Team Name</label>
        <input type="text"
               class="form-control"
               name="teamName"
               value="${cricketer.teamName}">
    </div>

    <div class="mb-3">
        <label>Role</label>
        <input type="text"
               class="form-control"
               name="role"
               value="${cricketer.role}">
    </div>

    <div class="mb-4">
        <label>Jersey Number</label>
        <input type="number"
               class="form-control"
               name="jersyNumber"
               value="${cricketer.jersyNumber}">
    </div>

    <div class="text-center">
        <button type="submit" class="btn btn-success">
            Update Player
        </button>

        <a href="report" class="btn btn-secondary">
            Cancel
        </a>
    </div>

</form>

</div>

</body>
</html>
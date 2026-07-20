<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Report</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f4f6f9;
    padding:30px;
}

.container{
    width:95%;
    margin:auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0 5px 20px rgba(0,0,0,.2);
}

h1{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
}

.top-bar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:20px;
}

.btn{
    display:inline-block;
    padding:10px 20px;
    text-decoration:none;
    color:white;
    border-radius:5px;
    font-weight:bold;
    transition:.3s;
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

table{
    width:100%;
    border-collapse:collapse;
}

table th{
    background:#0d6efd;
    color:white;
    padding:15px;
    font-size:18px;
}

table td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

table tr:nth-child(even){
    background:#f8f9fa;
}

table tr:hover{
    background:#d6e9ff;
}

.edit-btn{
    background:#ffc107;
    color:black;
    text-decoration:none;
    padding:8px 14px;
    border-radius:5px;
    font-weight:bold;
    margin-right:8px;
    transition:.3s;
}

.edit-btn:hover{
    background:#e0a800;
}

.delete-btn{
    background:#dc3545;
    color:white;
    text-decoration:none;
    padding:8px 14px;
    border-radius:5px;
    font-weight:bold;
    transition:.3s;
}

.delete-btn:hover{
    background:#bb2d3b;
}

.empty{
    text-align:center;
    color:red;
    font-size:20px;
    font-weight:bold;
    padding:20px;
}

</style>

</head>

<body>

<div class="container">  

<h1>🏏 Player Report</h1>

<div class="top-bar">

    <a href="/com.rt/" class="btn home-btn">🏠 Home</a>

    <a href="/com.rt/addCricketer" class="btn add-btn">➕ Add Player</a>

</div>

<table>

<thead>

<tr>
    <th>Player ID</th>
    <th>Player Name</th>
    <th>Team Name</th>
    <th>Role</th>
    <th>Jersey Number</th>
    <th>Actions</th>
</tr>

</thead>

<tbody>

<c:choose>

<c:when test="${not empty players}">

<c:forEach var="player" items="${players}">

<tr>

    <td>${player.playerId}</td>
    <td>${player.playerName}</td>
    <td>${player.teamName}</td>
    <td>${player.role}</td>
    <td>${player.jersyNumber}</td>

    <td>

        <a href="edit?playerId=${player.playerId}" class="edit-btn">
            ✏ Edit
        </a>

        <a href="delete?playerId=${player.playerId}"
           class="delete-btn"
           onclick="return confirm('Are you sure you want to delete this player?');">
            🗑 Delete
        </a>

    </td>

</tr>   

</c:forEach>

</c:when>

<c:otherwise>

<tr>
    <td colspan="6" class="empty">
        No Players Available
    </td>
</tr>

</c:otherwise>

</c:choose>

</tbody>

</table>

</div>

</body>
</html>
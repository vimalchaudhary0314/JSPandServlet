<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>

<style>
    body {
        background-color: #e6f3ff;
        font-family: Arial, sans-serif;
        text-align: center;
        padding-top: 100px;
    }
    .box {
        width: 400px;
        margin: auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
    }
    h1 {
        color: #0047b3;
    }
    .btn {
        padding: 12px 25px;
        background: #007bff;
        color: white;
        border-radius: 6px;
        text-decoration: none;
        font-size: 16px;
        display: block;
        margin: 20px auto;
        width: 200px;
    }
    .btn:hover {
        background: #0056b3;
    }
</style>

</head>
<body>

<div class="box">
    <h1>Welcome Admin</h1>

    <h3>Logged in as: ${email}</h3>

    <a class="btn" href="employee-form">Employee Form</a>
    <a class="btn" href="view-all">View All Employees</a>
    
</div>

</body>
</html>

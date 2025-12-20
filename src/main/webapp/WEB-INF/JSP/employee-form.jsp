<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Form</title>
<style>
    body {
        background-color: grey;
        font-family: Arial, sans-serif;
    }
    h2 {
        color: darkblue;
        text-align: center;
    }
    form {
        background-color: #f2f2f2;
        padding: 20px;
        width: 350px;
        margin: 20px auto;
        border-radius: 8px;
    }
    input[type="text"], input[type="number"], input[type="email"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0 15px 0;
        border-radius: 4px;
        border: 1px solid #ccc;
    }
    .btn {
        width: 100%;
        padding: 12px;
        background-color: green;
        color: white;
        border: none;
        cursor: pointer;
        font-size: 16px;
        border-radius: 4px;
        margin-top: 10px;
    }
    .btn:hover {
        background-color: darkgreen;
    }
</style>
</head>
<body>

<h2>Employee Form</h2>

<!-- Employee Form -->
<form action="${pageContext.request.contextPath}/register" method="post">
    <label for="id">Employee ID:</label>
    <input type="number" id="id" name="id" required />

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required />

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required />

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required />

    <label for="department">Department:</label>
    <input type="text" id="department" name="department" required />

    <label for="age">Age:</label>
    <input type="number" id="age" name="age" required />

    <!-- Submit Employee Form -->
    <button type="submit" class="btn">Submit Employee</button>
</form>


</body>
</html>

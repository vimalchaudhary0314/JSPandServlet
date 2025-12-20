<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web-MVC Login</title>
<style>
    body {
        background-color: lightblue;
        font-family: Arial, sans-serif;
    }
    h1 {
        text-align: center;
        color: darkblue;
    }
    form {
        background-color: 100;
        padding: 30px;
        width: 350px;
        margin: 50px auto;
        border-radius: 10px;
        box-shadow: 2px 2px 12px blue;
    }
    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border-radius: 4px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    button {
        margin-top: 15px;
        width: 100%;
        padding: 10px;
        background-color: green;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: darkgreen;
    }
</style>
</head>
<body>

<form action="${pageContext.request.contextPath}/login" method="post">
    <h1>Login User</h1>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required />
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required />
    
    <button type="submit">Submit</button>
</form>

</body>
</html>

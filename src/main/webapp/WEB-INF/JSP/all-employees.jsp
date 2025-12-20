<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>All Employees</title>
<style>
body { font-family:Arial; background:#f5f5f5; text-align:center; padding-top:50px; }
table { margin:auto; border-collapse:collapse; width:80%; background:white; }
th, td { padding:12px; border:1px solid #ccc; }
th { background:#007bff; color:white; }
tr:nth-child(even) { background:#f2f2f2; }
a { text-decoration:none; color:white; padding:6px 12px; border-radius:4px; }
.view-btn { background:green; }
.back-btn { background:#007bff; margin-top:20px; display:inline-block; }
</style>
</head>
<body>

<h2>All Registered Employees</h2>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Department</th>
<th>Age</th>
</tr>

<c:forEach var="emp" items="${employees}">
<tr>
<td>${emp.id}</td>
<td>${emp.name}</td>
<td>${emp.email}</td>
<td>${emp.department}</td>
<td>${emp.age}</td>
</tr>
</c:forEach>
</table>

<a href="admin" class="back-btn">Back to Admin</a>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin login </title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" type="text/css">
</head>
<body>
<div class="login">
    <div class="login-header">
        <h1>Admin Login</h1>
    </div>
<div class="login-form">
<strong style="color: black;font-size: medium"> ${adminmsg} </strong><br><br>
<form action="adminloginview" method="post">
    <h3>Email Id</h3>
    <input type="text" name="Email_Id" placeholder="Admin Registered Email" required>
    <h3>Contact Number</h3>
    <input type="password" name="Contact_Number" placeholder="Admin Registered Number" required>
    <br>
    <button type="submit" class="button1">Login</button>
    <br>
    <strong style="color: red;font-size: medium"> ${errormsg} </strong><br><br>
</form>
</div>
</div>
</body>
</html>
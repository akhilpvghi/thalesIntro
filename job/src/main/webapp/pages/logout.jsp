<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Expires" CONTENT="0">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="Pragma" CONTENT="no-cache">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <script type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
    </script>
    <title>Logout</title>
    <style>
        body{
            font-family: 'Poppins', sans-serif;
        }
    </style>
</head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

    <div class="container" style="text-align: center">
    <strong style="text-align: center;"> YOU HAVE BEEN LOGGED OUT</strong>
    <a href="login"> SIGN IN </a>
    </div>


<script>
    if (window.history.replaceState)
    {
        window.history.replaceState(null, null, window.location.href);
    }
</script>


</body>
</html>
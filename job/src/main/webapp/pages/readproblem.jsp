<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <title>Read Problem</title>
    <style>
        *{
            font-family: "Poppins", sans-serif;
            font-size:35px;
        }
        body{
            background-color:whitesmoke; ;
        }
        body{
            font-size: 14px;
        }

        .margin{
            margin-left: 3%;
            margin-right: 3%;
        }
        .flex{
            display: inline;
        }
        em{
            font-style: normal;
            color: #a4c639;
        }


    </style>
</head>
<body>
<div class="margin">
<div class="flex">
<div class="flex-item">
    <h3><em>Problem</em></h3><p>${problem}</p>
</div>
    <div class="flex-items">
        <p>You Can Call Client At:<em> ${contact}</em></p>
    </div>
</div>
</div>
</body>
</html>
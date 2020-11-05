DR4BIZ<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
   <%-- <script
            src="https://kit.fontawesome.com/db53366089.js"
            crossorigin="anonymous"></script>--%>
    <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <style>
        .footer-distributed {
            background-color: #292c2f;
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
            box-sizing: border-box;
            width: 100%;
            text-align: left;
            font: normal 16px sans-serif;
            padding: 45px 50px;
        }

        .mywallet_logo_login{

                    height: 108px;
                    width: 143px;
                    border-radius: 29px;
                }

        .footer-distributed .footer-left p {
            color: #8f9296;
            font-size: 14px;
            margin: 0;
        }
        /* Footer links */

        .footer-distributed p.footer-links {
            font-size: 18px;
            font-weight: bold;
            color: #ffffff;
            margin: 0 0 10px;
            padding: 0;
            transition: ease .25s;
        }

        .footer-distributed p.footer-links a {
            display: inline-block;
            line-height: 1.8;
            text-decoration: none;
            color: inherit;
            transition: ease .25s;
        }

        .footer-distributed .footer-links a:before {
            content: "·";
            font-size: 20px;
            left: 0;
            color: #fff;
            display: inline-block;
            padding-right: 5px;
        }

        .footer-distributed .footer-links .link-1:before {
            content: none;
        }

        .footer-distributed .footer-right {
            float: right;
            margin-top: 6px;
            max-width: 180px;
        }

        .footer-distributed .footer-right a {
            display: inline-block;
            width: 35px;
            height: 35px;
            background-color: #33383b;
            border-radius: 2px;
            font-size: 20px;
            color: #ffffff;
            text-align: center;
            line-height: 35px;
            margin-left: 3px;
            transition:all .25s;
        }

        .footer-distributed .footer-right a:hover{transform:scale(1.1); -webkit-transform:scale(1.1);}

        .footer-distributed p.footer-links a:hover{text-decoration:underline;}

        /* Media Queries */

        @media (max-width: 600px) {
            .footer-distributed .footer-left, .footer-distributed .footer-right {
                text-align: center;
            }
            .footer-distributed .footer-right {
                float: none;
                margin: 0 auto 20px;
            }
            .footer-distributed .footer-left p.footer-links {
                line-height: 1.8;
            }
        }

        *{
            font-family: "Poppins", sans-serif;
        }
    </style>


    <script type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
    </script>
</head>
<body>
<div class="login">
    <div class="login-form">
    <form action="/validate" method="post">
    <a href="/">
    <img class="mywallet_logo_login" src="static/css/images/mywallet.jpg">
    </a>
        <br>
        <strong style="color: red;font-size: small"> ${error} </strong><br><br>
        <h3>Email ID:</h3>
        <input type="text" placeholder="Enter Email" name="userid" required>
        <h3>Password:</h3>
        <input type="password" placeholder="Enter Password" name="pass" required>
        <br>
        <button type="submit" class="button1">Login</button>
        <br>
    </form>
        <h3 class="no-access"><a href="forgot" style="color: #FFFFFF">Forgot Password?</a></h3>
        <a class="sign-up" href="register"><h3 style="align-content: center">Register For the Wallet</h3></a>
    </div>
</div>

<hr>
<footer class="footer-distributed">

    <div class="footer-right">

        <a href="#"><i class="lni lni-facebook-filled"></i></a>
        <a href="#"><i class="lni lni-twitter-original"></i></a>
        <a href="#"><i class="lni lni-linkedin-original"></i></a>
        <a href="#"><i class="lni lni-instagram"></i></a>
    </div>
    <p style="font-size: 14px; color: #FFFFFF;font-weight: 300" >Copyright &copy; 2020 MYWALLET.CO</p>
</footer>
</body>
</html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Client Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/clientdashboardhome.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <style>

        body{
            font-family: 'Poppins', sans-serif;
            font-size: 14px;
        }

   /*     !* Style the buttons that are used to open the tab content *!
        .tab button {
            background-color: inherit;
            float:right;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
        }*/

       /* !* Change background color of buttons on hover *!
        .tab button:hover {
            background-color: #ddd;
        }

        !* Create an active/current tablink class *!
        .tab button.active {
            background-color: #ccc;
        }
        */


        .button {
            background-color: #a4c639;
            border-color: #a4c639;
            border-width: thick;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        .button:hover
        {
            border-width: thick;
            background-color: transparent;
            border-color: #a4c639;
            color: #a4c639;
        }
        .show-hide-column-image
        {
            align-content: center;
            text-align: center;
        }

        table
        {
            width: 100%;
            background: #2B3600;
           /* border-radius: 0.25em;
            border-collapse: collapse;
            margin: 1em;*/
            /*table-layout: fixed;*/
        }

        thead {
            border-bottom: 1px solid #2B3600;
            color: white;
            background-color: #2B3600 ;
            font-size: 1.2em;
            font-weight: 600;
            padding: 0.5em 1em;
            text-align: left;
            text-transform: uppercase;
        }

        th{
            padding: 20px 15px;
            text-align: left;
            letter-spacing: 0.388em;
            font-weight: 500;
        }

        td {
            color: #fff;
            font-weight: 400;
            padding: 0.65em 1em;
        }


        .disabled td {
            color: #4F5F64;
        }

        .tb1-content{
            height: 300px;
            overflow-x:auto;
            margin-top: 0px;
            border: 1px solid rgba(255,255,255,0.3);
        }

        tbody tr {
            transition: background 0.25s ease;

        }
        tbody tr:hover {
            background: #2B3600;
        }

        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
        table{
            background: -webkit-linear-gradient(left, #a4c639, #2B3600 );
            background: linear-gradient(to right, #a4c639, #2B3600);
        }

        section{
            margin: 50px;
        }

        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }
        ::-webkit-scrollbar-thumb {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }

        @keyframes fadeInUp {
            from {
                transform: translate3d(0,40px,0)
            }

            to {
                transform: translate3d(0,0,0);
                opacity: 1
            }
        }

        @-webkit-keyframes fadeInUp {
            from {
                transform: translate3d(0,40px,0)
            }

            to {
                transform: translate3d(0,0,0);
                opacity: 1
            }
        }

        .animated {
            animation-duration: 1s;
            animation-fill-mode: both;
            -webkit-animation-duration: 1s;
            -webkit-animation-fill-mode: both
        }

        .animatedFadeInUp {
            opacity: 0
        }

        .fadeInUp {
            opacity: 0;
            animation-name: fadeInUp;
            -webkit-animation-name: fadeInUp;
        }
        @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap");
        *,
        *::before,
        *::after {
            box-sizing: inherit;
            margin: 0;
            padding: 0;
        }


        header {
            background: black;
            text-align: center;
            position: fixed;
            width: 100%;
            z-index: 100;
        }
        @media only screen and (min-width: 800px) {
            header {
                display: grid;
                grid-template-columns: 1fr auto minmax(600px, 3fr) 1fr;
            }
        }
        header h1 {
            padding: 1rem;
        }
        @media only screen and (min-width: 800px) {
            header h1 {
                grid-column: 2/3;
            }
        }
        header .nav-toggle {
            display: none;
        }
        header .nav-toggle-label {
            position: absolute;
            top: 0;
            left: 0;
            margin-left: 1em;
            height: 100%;
            display: flex;
            align-items: center;
            cursor: pointer;
        }
        @media only screen and (min-width: 800px) {
            header .nav-toggle-label {
                display: none;
            }
        }
        header .nav-toggle-label:hover span::before {
            transform: translateY(-1.5px);
        }
        header .nav-toggle-label:hover span::after {
            transform: translateY(1.5px);
        }
        header .nav-toggle-label span, header .nav-toggle-label span::before, header .nav-toggle-label span::after {
            display: block;
            width: 2em;
            height: 2px;
            position: relative;
            background: white;
            border-radius: 2px;
            transition: transform 250ms ease;
        }
        header .nav-toggle-label span::before, header .nav-toggle-label span::after {
            content: "";
            display: block;
            position: absolute;
            transition: transform 350ms ease;
        }
        header .nav-toggle-label span::before {
            top: -0.6em;
        }
        header .nav-toggle-label span::after {
            top: 0.6em;
        }
        header .nav-toggle:checked ~ nav {
            transform: scale(1, 1);
        }
        header .nav-toggle:checked ~ nav a {
            opacity: 1;
            transition: opacity 250ms ease 130ms;
        }
        header .nav-toggle:checked + label span {
            background-color: transparent;
        }
        header .nav-toggle:checked + label span::before {
            transform: rotate(135deg);
            top: 0;
        }
        header .nav-toggle:checked + label span::after {
            transform: rotate(-135deg);
            top: 0;
        }
        header nav {
            position: absolute;
            text-align: left;
            left: 0;
            top: 100%;
            width: 100%;
            background: black /*#eafcae*/ /*#f4f6f7*/;
            transform-origin: top;
            transform: scale(1, 0);
            transition: transform 250ms ease;
        }
        @media only screen and (min-width: 800px) {
            header nav {
                all: unset;
                grid-column: 3/4;
                display: flex;
                justify-content: flex-end;
                align-items: center;
            }
        }
        header nav ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        @media only screen and (min-width: 800px) {
            header nav ul {
                display: flex;
            }
        }
        header nav ul li {
            margin-bottom: 1em;
            margin-left: 1em;
            transition: color 2000ms ease;
        }
        @media only screen and (min-width: 800px) {
            header nav ul li {
                margin-bottom: 0;
                margin-left: 3em;
            }
        }
        header nav ul li a {
            color: #a4c639;
            text-decoration: none;
            font-size: 1.2rem;
            text-transform: uppercase;
            opacity: 0;
            transition: color 250ms ease, opacity 150ms ease;
        }
        @media only screen and (min-width: 800px) {
            header nav ul li a {
                opacity: 1;
                position: relative;
            }
            header nav ul li a::before {
                content: "";
                display: block;
                height: 5px;
                background: white ;
                position: absolute;
                top: -0.75em;
                left: 0;
                right: 0;
                transform-origin: left;
                transform: scale(0, 1);
                transition: transform 250ms ease;
            }
        }
        header nav ul li a:hover {
            color: white;
        }
        header nav ul li a:hover::before {
            transform: scale(1, 1);
        }

        .content
        {
           padding-top: 10%;
        }
        @media(max-width: 600px)
        {
            .content{
                padding-top: 27%;
            }


        }
        *{
            margin: 0;
            padding: 0;
        }
        .margin{
            margin-left: 3%;
            margin-right: 3%;
        }
        .sidenav {
            height: 100vh;
            width: 0;
            position: absolute;
            z-index: 1;
            /*top: 15%;*/
            left: 0;
            background-color: #040f04;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }

        .sidenav a:hover {
            color: #f1f1f1;
        }

        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }
        #myBtn {
            display: none; /* Hidden by default */
            position: fixed; /* Fixed/sticky position */
            bottom: 20px; /* Place the button at the bottom of the page */
            right: 30px; /* Place the button 30px from the right */
            z-index: 99; /* Make sure it does not overlap */
            border: none; /* Remove borders */
            outline: none; /* Remove outline */
            background-color:#a4c639 ; /* Set a background color */
            color: white; /* Text color */
            cursor: pointer; /* Add a mouse pointer on hover */
            padding: 15px; /* Some padding */
            border-radius: 10px; /* Rounded corners */
            font-size: 18px; /* Increase font size */
        }

        #myBtn:hover {
            background-color: #555; /* Add a dark-grey background on hover */
        }
        em{
            font-style: normal;
            color: #a4c639;
        }
        h2{
            letter-spacing: 0.524em;
            font-weight: 400;
        }

        @media screen and (max-width: 768px) {
            .options span{
                display: flex;
                margin-top: 11%;
            }

        }

        th {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 2;
        }

        th[scope=row] {
            position: -webkit-sticky;
            position: sticky;
            left: 0;
            z-index: 1;
        }
        textarea{
            width: 580px;
            height: 156px
        }

        @media screen and (max-width:786px ){
            textarea
            {
                width: 150px;
                height: 80px;
            }

        }

    </style>
</head>


<body onload="openNav()">
<%--<header>
    <div class="tab">
        <a href="logout"> <button class="tablinks" >Logout</button></a>
        <a href="clientreferhome"> <button class="tablinks" >Referral</button></a>
        <a href="clientplanshome"> <button class="tablinks" >Plans</button></a>
        <a href="clientprofilehome"> <button class="tablinks" >MyProfile</button></a>
        <a href="clientwallethome"> <button class="tablinks" >Wallet</button></a>
        <a href="clientdashboardhome"> <button class="tablinks" >Dashboard</button></a>
    </div>
</header>--%>
<header>
<a href="clientdashboardhome"><img src="static/css/images/DR4BIZ.jpg"></a>
<input type="checkbox" id="nav-toggle" class="nav-toggle">
<label for="nav-toggle" class="nav-toggle-label"><span></span></label>
<nav>
    <ul>
        <li><a href="clientdashboardhome">Dashboard</a></li>
        <li><a href="clientwallethome">My Wallet</a></li>
        <li><a href="clientprofilehome">Profile</a></li>
        <li><a href="clientplanshome">Plans</a></li>
        <li><a href="clientreferhome">Referral</a></li>
        <li><a href="logout">LogOut</a></li>
    </ul>
</nav>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="#book">Book Appointment</a>
        <a href="#pending">Pending Appointment</a>
        <a href="#upcoming">Upcoming Appointment</a>
        <a href="#history">Appointment History</a>
    </div>
</header>
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<div class="margin">
<div class="content" id="book" style="height: 100vh">
<div class="options">
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
    <h3 style="text-align: right; font-size: 28px; font-weight: 300;">Hello,<em> ${users.getFirst_Name()} ${users.getLast_Name()}</em></h3>
    <hr>
</div>
<div class="show-hide-column-image">
    <h3 style="font-size: 36px;font-weight: 600; text-align: center;">BOOK NEW <em>APPOINTMENT</em></h3>
    <button class="button" onclick="myFunction()">Click Here </button>
    <br><br>
</div>
<strong style="color: red;font-size: medium;align-items: center;display: flex;justify-content: center"><a href="/clientwallethome"> ${errormsg} </a></strong><br><br>
<div id="problem" style="display: none;margin-top: 0.5%">
    <form action="/clientdashboardhome" method="post">
        <div id="problemarea" style="text-align: center;margin-top: -4%">
            <input type="radio"  name="Mode" value="Shared" checked="checked">
            <label >Write a problem</label><br>
            <textarea maxlength="1000" name="Problem" placeholder="Write Your Problem (1000)"></textarea><br><br>
            <h3><strong>OR</strong></h3><br>
            <input type="radio"  name="Mode" value="Call Back" required>
            <label >Get a call back at ${users.getContact_Number()} </label><br><br>
            <button  class="button" type="submit">Submit</button>
            <br><br>
        </div>
    </form>
</div>
</div>
<hr>
<div>
<div id="pending" style="height: 100vh; padding-top: 10em">
<h2  style="text-align: center;margin-top:3%;"><u>PENDING <em>APPOINTMENT</em></u></h2>
<br>
    <div class="responsive">
<%--<div class="tb1-header animated animatedFadeInUp fadeInUp" data-wow-delay="0.3s" >
    <table >
    </table>
</div>--%>
<div class="tb1-content animated animatedFadeInUp fadeInUp" >
    <table >
        <thead>
        <tr>
        <th>Date</th>
        <th>Time</th>
        <th>Appointment ID</th>
        <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="i">
            <tr>
                <td>${i.getDate()}</td>
                <td>${i.getTime()}</td>
                <td >${i.getAppoint_Id()}</td>
                <td>In Review</td>

            </tr>
        </c:forEach>

        <c:forEach items="${list01}" var="i">
            <tr>
                <td>${i.getDate()}</td>
                <td>${i.getTime()}</td>
                <td>${i.getAppoint_Id()}</td>
                <td>Information Asked</td>
            </tr>
        </c:forEach>

        <c:forEach items="${list02}" var="i">
            <tr>
                <td>${i.getDate()}</td>
                <td>${i.getTime()}</td>
                <td>${i.getAppoint_Id()}</td>
                <td>To Be Scheduled</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
    </div>
</div>

<div id="upcoming" style="height: 100vh; padding-top: 10em">
<div style="margin-top: 20px">
<h2 style="text-align: center; margin-top: 2%"><u>UPCOMING <em>APPOINTMENT</em></u></h2>
</div>
<br>
<%--<div class="tb1-header animated animatedFadeInUp fadeInUp" style="">
<table >
</table>
</div>--%>
<div class="tb1-content animated animatedFadeInUp fadeInUp ">
    <table>
        <thead>
        <tr>
            <th>Date</th>
            <th>Time</th>
            <th>Appointment ID</th>
            <th>Expert Name</th>
        </tr>
        </thead>
    <c:forEach items="${list2}" var="i">
        <tr>
            <td>${i.getDate()}</td>
            <td>${i.getTime()}</td>
            <td>${i.getAppoint_Id()}</td>
            <td>${i.getExpert_Name()}</td>
        </tr>
    </c:forEach>
    </table>
</div>
</div>

<div id = "history" style="height: 100vh; padding-top: 10em">
<div style="margin-top: 20px">
    <h2 style="text-align: center;"><u><em>APPOINTMENT</em> HISTORY</u></h2>
</div>
<br>
<%--<div class="tb1-header animated animatedFadeInUp fadeInUp ">
    <table>

    </table>
</div>--%>
<div class="tb1-content animated animatedFadeInUp fadeInUp ">
    <table>
        <thead>
        <tr>
            <th>Date</th>
            <th>Time</th>
            <th>Appointment ID</th>
            <th>Expert Name</th>
            <th>Status</th>
        </tr>
        </thead>
    <c:forEach items="${list3}" var="i">
        <tr>
            <td>${i.getDate()}</td>
            <td>${i.getTime()}</td>
            <td>${i.getAppoint_Id()}</td>
            <td>${i.getExpert_Name()}</td>
            <td>${i.getStatus()}</td>
        </tr>
    </c:forEach>
    </table>
</div>
</div>
</div>
</div>
<script>
    function myFunction() {
        var x = document.getElementById("problem");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script>
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
<script>
    function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";

    }
    //Get the button:
    mybutton = document.getElementById("myBtn");

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
        } else {
            mybutton.style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }
</script>
</body>
</html>
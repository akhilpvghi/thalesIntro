<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
   <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/clientdashboardhome.css" type="text/css">--%>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <style>
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
        @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap");
        *,
        *::before,
        *::after {
            box-sizing: inherit;
            margin: 0;
            padding: 0;
        }

        body {
            box-sizing: border-box;
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
            background: black;
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
                background: white;
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
        #customers {

            border-collapse: collapse;
            width: auto ;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #a4c639;
            color: white;
        }
        *{
            font-family: "Poppins", sans-serif;
        }
        input[type=submit] {
            background-color: #a4c639;
            border: 0;
            border-radius: 5px;
            cursor: pointer;
            color: #fff;
            font-size:16px;
            font-weight: bold;
            line-height: 1.4;
            padding: 10px;
            width: 128px
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
        body{
            font-size: 14px;
        }

        .margin{
            margin-left: 3%;
            margin-right: 3%;
        }
        em{
            font-style: normal;
            color: #a4c639;
        }
        *{
            font-family: "Poppins", sans-serif;
        }
        h2{
            letter-spacing: 0.524em;
            font-weight: 400;
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
        #customers{
            width : 100%;
        }
        #customers.newappoint{
            table-layout: auto;
            width: 100%;
        }

        @media screen and (max-width: 768px) {
            h3{
                margin-top: 11%;
            }
            #customers{
                table-layout: auto;
                overflow-x: auto;
            }

        }

    </style>

</head>


<body>

<header>
    <a href="adminloginview"><img src="static/css/images/DR4BIZ.jpg"></a>
    <input type="checkbox" id="nav-toggle" class="nav-toggle">
    <label for="nav-toggle" class="nav-toggle-label"><span></span></label>
    <nav>
        <ul>
            <li><a href="adminloginview">Appointment</a></li>
            <li><a href="adminclient">Clients</a></li>
            <li><a href="logoutadmin">LogOut</a></li>
        </ul>
    </nav>
</header>


<div class="margin">
<div class="content">
    <h3 style="text-align: right; font-size: 28px; font-weight: 300;">Hello, <em>Admin</em></h3>
    <hr>
</div>
    <h2 style="text-align: center; margin-top: 2%"><u>NEW APPOINTMENT REQUEST</u></h2>
    <div style="overflow-x: auto">
    <table style="margin-top: 2%" id="customers" class="newappoint" >
    <thead style="background: #a4c639">
    <tr>
    <th>Appointment Id</th>
    <th>Date</th>
    <th>Name</th>
    <th>Company</th>
    <th>Mode</th>
    <th>Action</th>
    <th>Admin Action Information Asked</th>
    <th>Admin Action Information Received</th>
    <th>Update</th>
    <th>Admin Action Expert Assigned</th>
    <th>Admin Action Appointment Date & Time </th>
    <th>Schedule Appointment</th>
    <th>Delete Request</th>
    </tr>
    </thead>
    <c:forEach items="${list}" var="i">
            <td>${i.getAppoint_Id()}</td>
            <td>${i.getDate()}</td>
            <td>${i.getUsers().getFirst_Name()}</td>
            <td>${i.getUsers().getCompany_Name()} </td>
            <td>${i.getMode()}</td>
        <form action="readproblem" method="post">
            <td>
                <input type="text" name="appoint_id" value="${i.getAppoint_Id()}" hidden>
                <input type="submit" value="${i.getAction()}">
            </td>
        </form>
      <form method="post" action="updateInfo">
            <td>
                    ${i.getInfoAsked()}<br>
                <select name="InfoAsked" id="infoasked" >
                    <option value="${i.getInfoAsked()}">Select</option>
                    <option value="pending">Pending</option>
                    <option value="done">Done</option>
                </select>
            </td>
            <td>
                    ${i.getInfoReceived()}<br>
                <select name="InfoReceived" id="inforeceived" >
                    <option value="${i.getInfoReceived()}">Select</option>
                    <option value="pending">Pending</option>
                    <option value="done">Done</option>
                </select>
            </td>
          <td>
              <input type="text" name="Appoint_Id" value="${i.getAppoint_Id()}" hidden>
              <input type="submit" value="Update" style="width:100px">

          </td>
      </form>
        <form action="settingappointment" method="post">
            <td>
                ${i.getExpert_Name()}<br>
                <select name="Expert_Name" id="Expert" required>
                    <option value="">Select</option>
                    <option value="Amit Tiwari">Amit Tiwari</option>
                    <option value="Shishir Kumar">Shishir Kumar</option>
                    <option value="Amit Gupta">Amit Gupta</option>
                </select>
            </td>
            <td>
                <input type="date" name="Date" pattern="yyyy-MM-dd" required>
                <input type="time" name="Time" pattern="HH:mm" required>
            </td>
            <td>
                <input type="text" name="Appoint_Id" value="${i.getAppoint_Id()}" hidden>
                <input type="submit" value="Schedule Appointment" style="font-size: small;width:170px">
            </td>
        </form>
        <form action="deleterequest" method="post">
            <td>
                <input type="text" name="Appoint_Id" value="${i.getAppoint_Id()}" hidden>
                <input type="submit" value="Delete" style="width:70px">
            </td>
        </form>
        </tr>
    </c:forEach>
</table>
</div>
<hr>



<div style="padding-top: 3%">
    <h2 style="text-align: center; margin-top: 2%"><u>UPCOMING APPOINTMENT</u></h2>
<br>
    <div style="overflow-x: auto">
<table id="customers"  >
    <thead style="background: #a4c639;">
    <tr>
    <th>Appointment Id</th>
    <th>Date & Time</th>
    <th>Name</th>
    <th>Company</th>
    <th>Admin Action Edit</th>
    <th>Admin Action Completed</th>
    <th>Admin Action Cancelled</th>
    </tr>
    </thead>
    <c:forEach items="${list1}" var="i">
        <tr>
            <td>${i.getAppoint_Id()}</td>
            <td>Date:-${i.getDate()} <br> Time:- ${i.getTime()}</td>
            <td>${i.getUsers().getFirst_Name()} ${i.getUsers().getLast_Name()}</td>
            <td>${i.getUsers().getCompany_Name()}</td>

            <form method="post" action="edit">
            <td>
                <input type="text" name="Appoint_Id" value="${i.getAppoint_Id()}" hidden>
                <input type="submit" value="Edit">
            </td>
            </form>
            <form method="post" action="complete">
                <td>
                    <input type="text" name="Appoint_Id" value="${i.getAppoint_Id()}" hidden>
                    <input type="submit" value="Session Complete" style="width:160px;">
                </td>
            </form>
            <form method="post" action="cancel">
                <td>
                    <input type="text" name="Appoint_Id" value="${i.getAppoint_Id()}" hidden>
                    <input type="submit" value="Session Cancelled" style="width:160px;">
                </td>
            </form>
        </tr>
    </c:forEach>
</table>
<hr>
</div>
</div>

<div style="padding-top: 3%">
    <h2 style="text-align: center; margin-top: 2%"><u>APPOINTMENT HISTORY</u></h2>
<br>
    <div style="height: 300px; overflow-x: auto;">
<table id="customers">
    <thead style="background: #a4c639">
    <tr>
    <th>Appointment Id</th>
    <th>Date & Time</th>
    <th>Name</th>
    <th>Company</th>
    <th>Expert</th>
    <th>Status</th>
    </tr>
    </thead>
    <c:forEach items="${list2}" var="i">
        <tr>
            <td>${i.getAppoint_Id()} </td>
            <td>${i.getDate()} <br>${i.getTime()} </td>
            <td>${i.getUsers().getFirst_Name()} </td>
            <td>${i.getUsers().getCompany_Name()} </td>
            <td>${i.getExpert_Name()} </td>
            <td>${i.getStatus()} </td>
        </tr>
    </c:forEach>
    <c:forEach items="${list3}" var="j">
        <tr>
            <td>${j.getAppoint_Id()} </td>
            <td>${j.getDate()} <br>${j.getTime()} </td>
            <td>${j.getUsers().getFirst_Name()} </td>
            <td>${j.getUsers().getCompany_Name()} </td>
            <td>${j.getExpert_Name()} </td>
            <td>${j.getStatus()} </td>
        </tr>
    </c:forEach>
</table>
    </div>
    </div>
</div>
</body>
</html>
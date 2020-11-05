<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/clientdashboardhome.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<style>
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
    background:black;
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
    color:#a4c639;
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
    width: 95% ;
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
    width: 180px
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
        width:100%;
    }
    .hellocontent
    {
        padding-top: 10%;
    }

    .content
    {
        margin-top: 3%;
        padding-top: 0%;
    }

    @media screen and (max-width: 768px) {

        #customers{
            overflow-x: auto;
            margin-top: 3%;
        }
        h3{
            margin-top: 30%;
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
    <div class="hellocontent">
        <h3 style="text-align: right; font-size: 28px; font-weight: 300;">Hello, <em>Admin</em></h3>
        <hr>
    </div>
<div class="content" style="overflow-x: auto">
<table id="customers" >
    <thead>
    <tr>
    <th>S.No</th>
    <th>Name</th>
    <th>Company</th>
    <th>Contact</th>
    <th>Email Id</th>
    <th>Open Link</th>
    </tr>
    </thead>
    <% int c=0;
        %>
    <c:forEach items="${list4}" var="i">
        <tr>
            <%c++;%>
            <td><%out.println(c);%></td>
            <td>${i.getFirst_Name()} ${i.getLast_Name()}</td>
            <td>${i.getCompany_Name()}</td>
            <td>${i.getContact_Number()}</td>
            <form action="clientinfo" method="post">
                <td>${i.getEmail_Id()}</td>
                <input type="text" name="Email_Id" value="${i.getEmail_Id()}" hidden>
                <td><input type="submit" value="Open Link"></td>
            </form>
        </tr>
    </c:forEach>
</table>
</div>
</div>
</body>
</html>
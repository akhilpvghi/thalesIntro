<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Client</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/clientdashboardhome.css" type="text/css">
    <style>
        body{
            font-family: "Poppins", sans-serif;
        }
        em{
            font-style: normal;
            color: #a4c639;
        }
        h2{
            letter-spacing: 0.524em;
            font-weight: 400;
        }
        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        /* Style the buttons that are used to open the tab content */
        .tab button {
            background-color: inherit;
            float:right;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
            background-color: #ddd;
        }

        /* Create an active/current tablink class */
        .tab button.active {
            background-color: #ccc;
        }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }
        #customers {
            font-family: "Poppins", sans-serif;
            border-collapse: collapse;
            width: 100%;
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
            background-color: #040f04;
            color: white;
        }
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
            color: #a4c639  ;
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
        body{
            font-size: 14px;
        }

        .margin{
            margin-left: 3%;
            margin-right: 3%;
        }
        @media  screen and (max-width: 768px) {
            h3{
                margin-top: 11%;
            }

        }


    </style>
</head>
<body>
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
</header>
<div class="margin">
<div class="content">
    <h3 style="text-align: right; font-size: 28px; font-weight: 300;">Hello,<em> ${users.getFirst_Name()} ${users.getLast_Name()}</em></h3>

<hr>
<br>
<br>
</div>
<div class="animated animatedFadeInUp fadeInUp" data-wow-delay="0.3s" style="overflow-x: auto">
<table id="customers">
    <tr>
        <th>Price</th>
        <th> &#8377 5000*</th>
        <th> &#8377 18000*</th>
        <th> &#8377 51000*</th>
        <th> &#8377 96000*</th>
        <th> &#8377 195000*</th>
    </tr>
    <tr>
        <th>Service/Plan</th>
        <th> Plan Zero</th>
        <th> Quarterly</th>
        <th> Monthly</th>
        <th> Bi-Monthly</th>
        <th> Weekly</th>
    </tr>
    <tr>
        <th>Business Consultancy</th>
        <td> As & when request by client</td>
        <td> One Session every Quarter of the year</td>
        <td> One Session every Month of the year</td>
        <td> Two Session every Month of the year</td>
        <td> One Session every Week of the year</td>
    </tr>
    <tr>
        <th>Debt Financing Support</th>
        <td> Included</td>
        <td> Included</td>
        <td> Included</td>
        <td> Included</td>
        <td> Included</td>
    </tr>
    <tr>
        <th>Training Support</th>
        <td> Not Included</td>
        <td> Included</td>
        <td> Included with 10% Discount</td>
        <td> Included with 20% Discount</td>
        <td> Included with 30% Discount</td>
    </tr>
    <tr>
        <th>Recruitment Support</th>
        <td> Not Included</td>
        <td> Included</td>
        <td> Included with 10% Discount</td>
        <td> Included with 20% Discount</td>
        <td> Included with 30% Discount</td>
    </tr>
    <tr>
        <th>Business Development Support</th>
        <td> Not Included</td>
        <td> Not Included</td>
        <td> Included </td>
        <td> Included </td>
        <td> Included </td>
    </tr>
    <tr>
        <th> </th>
        <td><form method="post" action="buynowlink"><button name="amount" class="button"  value="5000" type="submit"> Buy Now </button></form></td>
        <td ><form method="post" action="buynowlink"><button name="amount"  class="button" value="18000" type="submit"> Buy Now </button></form></td>
        <td ><form method="post" action="buynowlink"><button name="amount" class="button" value="51000" type="submit"> Buy Now </button></form></td>
        <td><form method="post" action="buynowlink"><button name="amount" class="button" value="96000" type="submit"> Buy Now </button></form></td>
        <td><form method="post" action="buynowlink"><button name="amount" class="button" value="195000" type="submit"> Buy Now </button></form></td>
    </tr>
</table>
</div>
<em style="color: black">*Excluding GST</em>
</div>
</body>
</html>
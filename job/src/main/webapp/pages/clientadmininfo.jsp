<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/clientdashboardhome.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
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
        *{
            margin: 0;
            padding: 0;
        }
        body{
            font-family: 'Oswald', sans-serif;
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
            background-color: #005cbf;

        }

        /* Create an active/current tablink class */
        .tab button.active {
            background-color: #ccc;
        }
        input[type=text], select {
            width: 20%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 20%;
            background-color: #4CAF50;
            align-content: center;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        #User Info
        {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
        #Billing Info
        {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        #wallet
        {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
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
            font-family: "Poppins", sans-serif;
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
            background-color: #012B39;
            color: white;
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
        .loginBox{
            margin:1% auto 0% auto;
            padding:5px 60px 20px 60px;
            width:40%;
            height:50%;
            box-sizing:border-box;
            background:#a4c639;
        }

        h2{
            margin:0;
            padding:0 0 20px;
            text-align:center;
            color:violet;

        }

        .loginBox label{
            margin:0;
            padding:0;
            font-weight:bold;
            color:#fff;
        }

        .loginBox input{
            width:100%;
            height:20px;
            margin:0 0 20px 0;
        }

        .loginBox input[type="text"],
        .loginBox input[type="password"],
        .loginBox input[type="email"],
        .loginBox input[type="date"]{
            border:none;
            border-bottom:1px solid #fff;
            background:transparent;
            outline:none;
            color:#fff;
            font-size:14px;
            text-align:center;
        }
        .loginBox select{
            width:100%
        }

        ::placeholder{
            color: white;
            opacity:0.1;
            text-align:center;
        }

        .loginBox input[type="submit"]{
            border:1px solid;
            height:40px;
            color:#FFFFFF;
            background-color:transparent;
        }

        .loginBox input[type="submit"]:hover{
            color:black;
            border:2px solid;
        }

        form a{
            color:violet;
            text-decoration:none;
        }
        body{
            font-size: 14px;
        }

        .margin{
            margin-left: 3%;
            margin-right: 3%;
        }
        .flex{
            display: flex;
            flex:2;
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
        @media screen and (max-width: 768px) {


            .flex{
             display: inline;
         }
            .loginBox{
                width:100%;
                margin-top: 3%;
            }

            h3 {
                margin-top: 11%;
            }
            #walletbalance
            {
                width:50%;
            }
            #debitmoney
            {
                width: 50%;
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
    <div class="flex">
<div class="loginBox">
<h1 style="text-align: center;color: #FFFFFF; font-weight: 400; letter-spacing: 0.1rem
">${users.getFirst_Name()} ${users.getLast_Name()}'s Profile</h1>
<section id="User Info">
    <form action="updateuserdetailadmin" method="post" >
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="First_Name" value="${users.getFirst_Name()}">
        <br>
        <label for="fname">Middle Name</label>
        <input type="text" id="mname" name="Middle_Name" value="${users.getMiddle_Name()}">
        <br>
        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="Last_Name" value="${users.getLast_Name()}">
        <br>
        <label for="lname">Referral Code</label>
        <input type="text" id="rcoupon" name="Referred_Coupon" value="${users.getReferred_Coupon()}" readonly>
        <br>
        <label for="lname">Email Id</label>
        <input type="text" id="emailid" name="Email_Id" value="${users.getEmail_Id()}" readonly>
        <br>
        <label for="lname">Contact Number</label>
        <input type="text" id="contact" name="Contact_Number" value="${users.getContact_Number()}">
        <br>
        <label for="lname">Password</label>
        <input type="text" id="password" name="Password" value="${users.getPassword()}">
        <br>
        <label for="lname">Company name</label>
        <input type="text" id="companyname" name="Company_Name" value="${users.getCompany_Name()}">
        <br>
        <label for="lname">Started In:</label>
        ${users.getStarted_In()}
        <select name="Started_In" id="year" value="${users.getStarted_In()}">
        </select>

        <script>
            var start = 2000;
            var end = new Date().getFullYear();
            var options = "";
            for(var year = start ; year <=end; year++){
                options += "<option>"+ year +"</option>";
            }
            document.getElementById("year").innerHTML = options;
        </script>

        <br>
        <label for="lname">Type of Company:</label>
        ${users.getType_of_Company()}
        <select name="Type_of_Company" id="TOC" value="${users.getType_of_Company()}">
            <option value="Service">Service</option>
            <option value="Product">Product</option>
        </select>
        <br>
        <label for="lname">Type of Business:</label>
        ${users.getType_of_Business()}
        <select name="Type_of_Business" id="TOB" value="${users.getType_of_Business()}">
            <option value="Manufacturing">Manufacturing</option>
            <option value="Service">Service</option>
            <option value="Trading">Trading</option>
            <option value="Hybrid">Hybrid(More than one above)</option>
        </select>
        <br>
        <label for="lname">Industry:</label>
        ${users.getIndustry()}
        <select name="Industry" id="Ind" class="form__input" onchange='CheckColors(this.value);'>
            <option value="">Industry</option>
            <option value="Food & Beverages">Food & Beverages</option>
            <option value="Automobiles & Components">Automobiles & Components</option>
            <option value="Financial Services">Financial Services</option>
            <option value="Construction & Allied Businesses">Construction & Allied Businesses</option>
            <option value="Consumer Durables">Consumer Durables</option>
            <option value="E-commerce">E-commerce</option>
            <option value="E-learning">E-learning</option>
            <option value="Education & Training">Education & Training</option>
            <option value="Engineering & Capital Goods">Engineering & Capital Goods</option>
            <option value="FMCG">FMCG</option>
            <option value="Jewellery">Jewellery</option>
            <option value="Medical & Healthcare">Medical & Healthcare</option>
            <option value="Infrastructure">Infrastructure</option>
            <option value="IT & ITES">IT & ITES</option>
            <option value="Entertainment">Entertainment</option>
            <option value="Pharmaceutical">Pharmaceutical</option>
            <option value="Real Estate">Real Estate</option>
            <option value="Renewable Energy">Renewable Energy</option>
            <option value="Recruitment">Recruitment</option>
            <option value="Retail">Retail</option>
            <option value="Professional Services">Professional Services</option>
            <option value="Apparel & Clothing">Apparel & Clothing</option>
            <option value="Tourism & Hospitality">Tourism & Hospitality</option>
            <option value="Other" type="text">Others</option>
        </select>
        <input type="text" name="Industry" id="Inds" placeholder="Industry" class="form__input" style="display:none  ;">
        <script type="text/javascript">
            function CheckColors(val){
                var element=document.getElementById('Ind');
                var e1 = document.getElementById('Inds');
                if(val=='Other') {

                    e1.style.display = 'block';
                }
                else
                    e1.style.display='none';

            }

        </script>
        <br>
        <input type="submit" value="Update">
    </form>
    <hr>
    <hr>
</section>
</div>
<div class="loginBox">
<h1 style="text-align: center;color: #FFFFFF; font-weight: 400; letter-spacing: 0.1rem
">${users.getFirst_Name()} ${users.getLast_Name()}'s Billing Details</h1>
<section id="Billing Info">
    <form action="updatebillingdetailadmin" method="post">
        <label for="fname">Name</label>
        <input type="text" id="bilname" name="Billing_Name" value="${billing.getBilling_Name()}">
        <br>
        <label for="fname">Address</label>
        <input type="text" id="address" name="Address" value="${billing.getAddress()}">
        <br>
        <label for="fname">City</label>
        <input type="text" id="city" name="City" value="${billing.getCity()}">
        <br>
        <label for="fname">State</label>
        <input type="text" id="State" name="State" value="${billing.getState()}">
        <br>
        <label for="fname">PinCode</label>
        <input type="text" id="pincode" name="Pincode" value="${billing.getPincode()}">
        <br>
        <label for="fname">GST Number</label>
        <input type="text" id="GST number" name="GST_Number" value="${billing.getGST_Number()}">
        <br>
        <label for="fname">Pan Number</label>
        <input type="text" id="pancard" name="Pan_Card" value="${billing.getPan_Card()}">
        <br>
        <input type="hidden" name="users" value="${billing.getUsers().getEmail_Id()}" hidden>
        <input type="submit" value="UPDATE">
    </form>
</section>
    <hr><hr>
</div>

    </div>
    <br>
<hr>

<h1 style="text-align: center; font-weight: 400; letter-spacing: 0.5rem">${users.getFirst_Name()} ${users.getLast_Name()}'s Wallet Details</h1>
<section id="wallet">
    <form action="adminwallet" method="post">
        <label for="fname">${users.getFirst_Name()} ${users.getLast_Name()}'s Wallet Balance</label>
        <input type="text" id="walletbalance" name="Balance" value="${users.getBalance()}" readonly>
        <br><br>
        <label for="fname">Add Money to ${users.getFirst_Name()} ${users.getLast_Name()}'s Wallet Balance</label>
        <input type="text" name="Credit_Amount" value="0" required>
        <%--<select name="Particular" id="creditmoney" required>
            <option value="">Select</option>
            <option value="Consultancy Appointment">Consultancy Appointment</option>
            <option value="Training">Training</option>
            <option value="Recruitment">Recruitment</option>
            <option value="Loan Processing">Loan Processing</option>
            <option value="Referral Earned">Referral Earned</option>
            <option value="Cash Added">Cash Added</option>
        </select>--%>
        <br>
        <label for="fname">Deduct Money to ${users.getFirst_Name()} ${users.getLast_Name()}'s Wallet Balance</label>
        <input type="text" name="Debit_Amount" value="0" required>
        <br>
        <label for="fname">Particular</label>
        <select name="Particular" id="debitmoney" required>
            <option value="">Select</option>
            <option value="Consultancy Appointment">Consultancy Appointment</option>
            <option value="Training">Training</option>
            <option value="Recruitment">Recruitment</option>
            <option value="Loan Processing">Loan Processing</option>
            <option value="Referral Earned">Referral Earned</option>
            <option value="Bonus">Bonus</option>
            <option value="Cash Added">Cash Added</option>
        </select>
        <br>
        <input type="hidden" name="users" value="${users.getEmail_Id()}" hidden>
        <input type="submit" value="UPDATE">
    </form>
</section>
</div>
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>
   <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/register.css" type="text/css">--%>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <style>
        body{
            font-family: 'Poppins', sans-serif;
        }
        /*!* Style the tab *!
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
            align-items: flex-start;
        }

        !* Style the buttons that are used to open the tab content *!
        .tab button {
            background-color: inherit;
            float:right;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
        }

        !* Change background color of buttons on hover *!
        .tab button:hover {
            background-color: #ddd;
        }

        !* Create an active/current tablink class *!
        .tab button.active {
            background-color: #ccc;
        }
        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
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

        .User Info {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
*/
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
        body
        {
            background: -webkit-linear-gradient(left, #FFFFFF, #a4c639);
            background: linear-gradient(to right, #FFFFFF, #a4c639);
            font-family: 'Poppins', sans-serif;
            -webkit-animation: move 10s ease infinite;
            animation: move 10s ease infinite;
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
            height: 100vh;
            width: 90%;
            max-width: 340px;
            margin: 2vh auto;
        }

        .user__header {
            text-align: center;
            opacity: 0;
            -webkit-transform: translate3d(0, 500px, 0);
            transform: translate3d(0, 500px, 0);
            -webkit-animation: arrive 500ms ease-in-out 0.7s forwards;
            animation: arrive 500ms ease-in-out 0.7s forwards;
        }

        .user__title {
            font-size: 14px;
            margin-bottom: -10px;
            font-weight: 500;
            color: white;
        }

        .formpage {
            background: #a4c639;
            margin-top: 40px;
            border-radius: 6px;
            overflow: hidden;
            opacity: 0;
            -webkit-transform: translate3d(0, 500px, 0);
            transform: translate3d(0, 500px, 0);
            -webkit-animation: arrive 500ms ease-in-out 0.9s forwards;
            animation: arrive 500ms ease-in-out 0.9s forwards;
        }
        label{
            color:#FFFFFF;
        }

        .form--no {
            -webkit-animation: NO 1s ease-in-out;
            animation: NO 1s ease-in-out;
            opacity: 1;
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
        }

        .form__input {
            display: block;
            width: 100%;
            padding: 12px;
            -webkit-appearance: none;
            border: 0;
            outline: 0;
            -webkit-transition: 0.3s;
            transition: 0.3s;
            /*height: 2%;*/
        }
        .form__input:focus {
            background: #f7f7f7;
        }

        .mywallet_logo_register{

                    height: 108px;
                    width: 143px;
                    border-radius: 29px;
                }

        .button {
            border-color: #fff;
            background-color: #a4c639;
            color: #FFFFFF;
            display: block;
            width: 100%;
            padding: 20px;
            -webkit-appearance: none;
            outline: 0;
            border: 0;
            -webkit-transition: 0.3s;
            transition: 0.3s;

        }
        .button:hover {
            background-color: #fff;
            color: #a4c639;
        }
        .signin{
            background-color: #f1f1f1;
            text-align: center;
        }

        @-webkit-keyframes NO {
            from,
            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }
            10%,
            30%,
            50%,
            70%,
            90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }
            20%,
            40%,
            60%,
            80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }

        @keyframes NO {
            from,
            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }
            10%,
            30%,
            50%,
            70%,
            90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }
            20%,
            40%,
            60%,
            80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }
        @-webkit-keyframes arrive {
            0% {
                opacity: 0;
                -webkit-transform: translate3d(0, 50px, 0);
                transform: translate3d(0, 50px, 0);
            }
            100% {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }
        }
        @keyframes arrive {
            0% {
                opacity: 0;
                -webkit-transform: translate3d(0, 50px, 0);
                transform: translate3d(0, 50px, 0);
            }
            100% {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }
        }
        @-webkit-keyframes move {
            0% {
                background-position: 0 0;
            }
            50% {
                background-position: 100% 0;
            }
            100% {
                background-position: 0 0;
            }
        }
        @keyframes move {
            0% {
                background-position: 0 0;
            }
            50% {
                background-position: 100% 0;
            }
            100% {
                background-position: 0 0;
            }
        }
        *{
            font-family: "Poppins", sans-serif;
        }


    </style>
    <script>

        function Validate() {


            var x = document.form_valid.Email_Id.value;
            var atpos = x.indexOf("@");
            var dotpos = x.lastIndexOf(".");
            var y = document.form_valid.s.value;
            if ((atpos < 1) || (dotpos < atpos + 2) || (dotpos + 2 >= x.length) || (x == "")) {
                alert("Not a valid e-mail address");
                return false;
            }
            var z= document.form_valid.Contact_Number.value;
            if((z=="") || (isNaN(z)) || (z.length>10) || (z.length<10))
            {
                alert("ENTER VALID MOBILE NUMBER");
                return false;
            }
        }
    </script>

</head>
<body>
<%--<div style="display: flex; justify-content: flex-start; margin-left: 0%">
<a href="/" ><img src="/static/css/images/DR4BIZ.jpg" alt="Logo" width="50" height="120"/></a>
</div>--%>
<header class="user__header">
    <a href="/" >
    <img class="mywallet_logo_register" src="static/css/images/mywallet.jpg">
    </a>
    <h1 style="color:#FFFFFF">Sign Up</h1><br>
</header>
<div class="formpage" style="margin-top: 0%">
<form action="/addPerson" method="post" name="form_valid"  onsubmit="return Validate()">
    <div >

        <input type="text" placeholder="Name" class="form__input" name="First_Name" minlength="3" required>
        <input type="text" placeholder="Mobile" class="form__input" name="Contact_Number" id="contactno" required>
        <input type="text" class="form__input" placeholder="Email" name="Email_Id" id="emailid" required>

        <input type="password" class="form__input" id="txtPassword" placeholder="Password" name="password" required>
<%--        <label ><b>Repeat Password</b></label>--%>
        <input type="password" class="form__input" placeholder="Confirm Password" id="txtConfirmPassword" name="psw-repeat" required>
        <input type="text" placeholder="Referral Code" name="Referred_Coupon" class="form__input">
<%--

<%--        <label><b>Middle Name</b></label>--%>
        <%--<input type="text" placeholder="Middle Name" name="Middle_Name" class="form__input">
&lt;%&ndash;        <label><b>Last Name</b></label>&ndash;%&gt;
        <input type="text" placeholder="Last Name" name="Last_Name" class="form__input">--%>
<%--        <label><b>Company</b></label>--%>
<%--        <br>--%>
<%--        <input type="text" placeholder="Company Name" name="Company_Name"class="form__input" required>--%>
<%--&lt;%&ndash;        <label><b>StartedIn</b></label>&ndash;%&gt;--%>

<%--        <select id="year" name="Started_In" class="form__input" ></select>--%>
<%--           <script>--%>
<%--            var start = 2000;--%>
<%--            var end = new Date().getFullYear();--%>
<%--            var startedin="Started In";--%>
<%--            var options = "";--%>
<%--            options+= "<option>"+startedin +"</option>";--%>
<%--            for(var year = start ; year <=end; year++){--%>
<%--                options += "<option>"+ year +"</option>";--%>
<%--            }--%>
<%--            document.getElementById("year").innerHTML = options;--%>
<%--            </script>--%>
<%--        &lt;%&ndash;<label7><b>Type of Company</b></label7>&ndash;%&gt;--%>
<%--       &lt;%&ndash; <select name="Type_of_Company" id="cars" class="form__input" required>--%>
<%--           <option value="">Type Of Company</option>--%>
<%--            <option value="Product">Product</option>--%>
<%--            <option value="Service">Service</option>--%>
<%--        </select>&ndash;%&gt;--%>
<%--        &lt;%&ndash;<label><b>Contact No</b></label>&ndash;%&gt;--%>

<%--        &lt;%&ndash;<label><b>Type of Business</b></label>&ndash;%&gt;--%>
<%--        <select name="Type_of_Businesss" id="TOB" class="form__input" required>--%>
<%--            <option value="">Type Of Business</option>--%>
<%--            <option value="Manufacturing">Manufacturing</option>--%>
<%--            <option value="Trading">Trading</option>--%>
<%--            <option value="Service">Service</option>--%>
<%--            <option value="Hybrid">Hybrid</option>--%>
<%--        </select>--%>
<%--        &lt;%&ndash;<label><b>Industry</b></label>&ndash;%&gt;--%>
<%--        <select name="Industry" id="Ind" class="form__input" onchange='CheckColors(this.value);' required>--%>
<%--            <option value="">Industry</option>--%>
<%--            <option value="Food & Beverages">Food & Beverages</option>--%>
<%--            <option value="Automobiles & Components">Automobiles & Components</option>--%>
<%--            <option value="Financial Services">Financial Services</option>--%>
<%--            <option value="Construction & Allied Businesses">Construction & Allied Businesses</option>--%>
<%--            <option value="Consumer Durables">Consumer Durables</option>--%>
<%--            <option value="E-commerce">E-commerce</option>--%>
<%--            <option value="E-learning">E-learning</option>--%>
<%--            <option value="Education & Training">Education & Training</option>--%>
<%--            <option value="Engineering & Capital Goods">Engineering & Capital Goods</option>--%>
<%--            <option value="FMCG">FMCG</option>--%>
<%--            <option value="Jewellery">Jewellery</option>--%>
<%--            <option value="Medical & Healthcare">Medical & Healthcare</option>--%>
<%--            <option value="Infrastructure">Infrastructure</option>--%>
<%--            <option value="IT & ITES">IT & ITES</option>--%>
<%--            <option value="Entertainment">Entertainment</option>--%>
<%--            <option value="Pharmaceutical">Pharmaceutical</option>--%>
<%--            <option value="Real Estate">Real Estate</option>--%>
<%--            <option value="Renewable Energy">Renewable Energy</option>--%>
<%--            <option value="Recruitment">Recruitment</option>--%>
<%--            <option value="Retail">Retail</option>--%>
<%--            <option value="Professional Services">Professional Services</option>--%>
<%--            <option value="Apparel & Clothing">Apparel & Clothing</option>--%>
<%--            <option value="Tourism & Hospitality">Tourism & Hospitality</option>--%>
<%--            <option value="Other" type="text">Others</option>--%>
<%--        </select>--%>
<%--           <input type="text" name="Industry" id="Inds" placeholder="Industry" class="form__input" style="display:none  ;">--%>
<%--           <script type="text/javascript">--%>
<%--               function CheckColors(val){--%>
<%--                   var element=document.getElementById('Ind');--%>
<%--                   var e1 = document.getElementById('Inds');--%>
<%--                   if(val=='Other') {--%>

<%--                       e1.style.display = 'block';--%>
<%--                   }--%>
<%--                   else--%>
<%--                       e1.style.display='none';--%>

<%--               }--%>

           </script>
        <button type="submit" class="button">REGISTER</button>
    </div>

    <div class="container signin">
        <p >Already have an account? <a href="login">Sign in</a>.</p>
    </div>

</form>
</div>
    <script type="text/javascript">
        function Validate()
        {
            var password = document.getElementById("txtPassword").value;
            var confirmPassword = document.getElementById("txtConfirmPassword").value;

            if (password != confirmPassword)
            {
                alert("Passwords do not match.");
                return false;

            }
            var x = document.form_valid.Email_Id.value;
            var atpos = x.indexOf("@");
            var dotpos = x.lastIndexOf(".");

            if ((atpos<1) || (dotpos<atpos+2) || (dotpos+2>=x.length) || (x==""))
            {
                alert("Not a valid e-mail address");
                return false;
            }

            var z= document.form_valid.Contact_Number.value;
            if((z=="") || (isNaN(z)) || (z.length>10) || (z.length<10))
            {
                alert("ENTER VALID MOBILE NUMBER");
                return false;
            }

            return true;
        }
    </script>

</body>
</html>
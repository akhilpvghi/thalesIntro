<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Client</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/clientdashboardhome.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <style>
        body{


        }
        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
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
        #button {
            background-color: #a4c639; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }


        table{
            width:100%;
            /*table-layout: fixed;*/
        }
        .tbl-header{

            background-color: rgba(255,255,255,0.3);
        }
        .tbl-content{
            height: 200px;
            overflow-x:auto;
            margin-top: 0px;
            border: 1px solid rgba(255,255,255,0.3);
        }
        th{
            padding: 20px 15px;
            text-align: left;
            font-weight: 500;
            font-size: 18px;
            color: #fff;
            text-transform: uppercase;
            background: #a4c639;
        }
        td{
            padding: 15px;
            text-align: left;
            vertical-align:middle;
            font-weight: 300;
            font-size: 16px;
            color: black;
            border-bottom: solid 1px rgba(255,255,255,0.1);
        }


        /* demo styles */

        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
        table{
            background: -webkit-linear-gradient(left, whitesmoke, wheat);
            background: linear-gradient(to right, whitesmoke, wheat);
            font-family: 'Roboto', sans-serif;
        }
        section{
            margin: 50px;
        }


        /* for custom scrollbar for webkit browser*/

        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }
        ::-webkit-scrollbar-thumb {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
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
        em{
            font-style: normal;
            color: #a4c639;
        }
        h2{
            letter-spacing: 0.524em;
            font-weight: 400;
        }
        *{
            font-family: "Poppins", sans-serif;
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

        label{
            font-size: large;
        }

        @media  screen and (max-width: 768px) {
            label {
                font-size: small;
            }
            h3{
                margin-top: 11%;
            }

        }




    </style>
    <script>
        $(window).on("load resize ", function() {
            var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
            $('.tbl-header').css({'padding-right':scrollWidth});
        }).resize();
    </script>
</head>
<body>


</body>
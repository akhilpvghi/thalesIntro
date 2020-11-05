<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">

    <!--====== Title ======-->
    <title>DR4BIZ</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}${pageContext.request.contextPath}/static/css/images/favicon.png" type="image/png">

    <!--====== Magnific Popup CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/magnific-popup.css">

    <!--====== Slick CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/slick.css">

    <!--====== Line Icons CSS ======-->
    <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">

    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">

    <!--====== Default CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/default.css">

    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">

    <%--My Fonts --%>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
<!--[if IE]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!--====== PRELOADER PART START ======-->

<div class="preloader">
    <div class="loader">
        <div class="ytp-spinner">
            <div class="ytp-spinner-container">
                <div class="ytp-spinner-rotator">
                    <div class="ytp-spinner-left">
                        <div class="ytp-spinner-circle"></div>
                    </div>
                    <div class="ytp-spinner-right">
                        <div class="ytp-spinner-circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--====== PRELOADER PART ENDS ======-->

<!--====== NAVBAR TWO PART START ======-->

<section class="navbar-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg">

                    <a class="navbar-brand" href="#">
                        <img src="${pageContext.request.contextPath}/static/css/images/DR4BIZ.jpg" alt="Logo">
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTwo" aria-controls="navbarTwo" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="toggler-icon"></span>
                        <span class="toggler-icon"></span>
                        <span class="toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarTwo">
                        <ul class="navbar-nav m-auto">
                            <li class="nav-item active"><a class="page-scroll" href="#home">Home</a></li>
                            <li class="nav-item"><a class="page-scroll" href="#about">Why Us?</a></li>
                            <li class="nav-item"><a class="page-scroll" href="#services">Services</a></li>
                            <li class="nav-item"><a class="page-scroll" href="#testimonial">Clients</a></li>
                            <li class="nav-item"><a class="page-scroll" href="#team">Experts</a></li>
                            <li class="nav-item"><a class="page-scroll" href="#contact">Contact</a></li>
                        </ul>
                    </div>

                    <div class="navbar-btn d-none d-sm-inline-block">
                        <ul>
                            <li><a class="solid" href="login">Login/Register</a></li>
                        </ul>
                    </div>
                </nav> <!-- navbar -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== NAVBAR TWO PART ENDS ======-->

<!--====== SLIDER PART START ======-->

<section id="home" class="slider_area">
    <div id="carouselThree" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselThree" data-slide-to="0" class="active"></li>
            <li data-target="#carouselThree" data-slide-to="1"></li>
            <li data-target="#carouselThree" data-slide-to="2"></li>
            <li data-target="#carouselThree" data-slide-to="3"></li>
            <li data-target="#carouselThree" data-slide-to="4"></li>
            <li data-target="#carouselThree" data-slide-to="5"></li>
            <li data-target="#carouselThree" data-slide-to="6"></li>
            <li data-target="#carouselThree" data-slide-to="7"></li>
        </ol>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Improve Profitability.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->


                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/1.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->

            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Expand Business.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->

                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/2.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->

            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Increase Sales.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->

                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/3.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->

            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Improve Efficiencies.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/1.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->

            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Reduce Cost.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/2.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->



            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Get Funding.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/3.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->

            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Hire Good Quality Employees.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->

                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/1.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->

            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider-content">
                                <p class="text" style="font-size: xx-large">Do You Want To?</p>
                                <h1 class="title" >Improve Culture.</h1>
                                <ul class="slider-btn rounded-buttons">
                                    <li><a class="main-btn rounded-one" href="register">GET YOUR FREE SESSION</a></li>
                                    <li><a class="main-btn rounded-two" href="login">Login</a></li>
                                </ul>
                            </div> <!-- slider-content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
                <div class="slider-image-box d-none d-lg-flex align-items-end">
                    <div class="slider-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/slider/2.png" alt="Hero">
                    </div> <!-- slider-imgae -->
                </div> <!-- slider-imgae box -->
            </div> <!-- carousel-item -->
        </div>

        <a class="carousel-control-prev" href="#carouselThree" role="button" data-slide="prev">
            <i class="lni lni-arrow-left"></i>
        </a>
        <a class="carousel-control-next" href="#carouselThree" role="button" data-slide="next">
            <i class="lni lni-arrow-right"></i>
        </a>
    </div>
</section>

<!--====== SLIDER PART ENDS ======-->


<!--====== ABOUT PART START ======-->

<section id="about" class="about-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="faq-content mt-45">
                    <div class="about-title">
                        <h6 class="sub-title">A Little More About Us</h6>
                        <h4 class="title"> About Our Site</h4>
                    </div> <!-- faq title -->
                    <div class="about-accordion">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Why us ?</a>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p class="text">Small & medium sized businesses also want sharp minds with strong business acumen to work on their business problems but they either don’t have the size to engage them permanently or they don’t have the money to afford them.</p>
                                    </div>
                                </div>
                            </div> <!-- card -->
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <a href="#" class="collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Why us?</a>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p class="text">They also want mentors whom they can consult as & when required to solve their business problems or take a better business decision but sometimes they can’t afford high fees of business consultants and sometimes they don’t want to risk their money with consultants who rather than helping them solve their specific business problem, give gyan.</p>
                                    </div>
                                </div>
                            </div> <!-- card -->
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <a href="#" class="collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Why us?</a>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p class="text">To run a business smoothly & profitably, a company should not only have robust support function teams but also ensure that the cost of the support function team is a small fraction of the total cost. Unfortunately, in tough business environment and smaller business sizes, companies are forced to compromise on support functions to manage their cost within the budgets.</p>
                                    </div>
                                </div>
                            </div> <!-- card -->
                            <div class="card">
                                <div class="card-header" id="headingFore">
                                    <a href="#" class="collapsed" data-toggle="collapse" data-target="#collapseFore" aria-expanded="false" aria-controls="collapseFore">Most Important Why us?</a>
                                </div>
                                <div id="collapseFore" class="collapse" aria-labelledby="headingFore" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p class="text">DR4BIZ has been incorporated with an objective to solve these problems faced by small & medium businesses by providing them these services in a Result oriented manner but at a very low & variable cost.</p>
                                    </div>
                                </div>
                            </div> <!-- card -->
                            <%--<div class="card">
                                <div class="card-header" id="headingFive">
                                    <a href="#" class="collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Frequently Asked Question Five</a>
                                </div>
                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p class="text">Morbi vehicula arcu et pellentesque tincidunt. Nunc ligula nulla, lobortis a elementum non, vulputate ut arcu. Aliquam erat volutpat. Nullam lacinia felis.</p>
                                    </div>
                                </div>
                            </div> <!-- card -->--%>

                           <br><br>
                            <a class="features-btn" href="register">GET YOUR FREE SESSION</a>
                        </div>
                    </div> <!-- faq accordion -->
                </div> <!-- faq content -->
            </div>
            <div class="col-lg-7">
                <div class="about-image mt-50">
                    <img src="${pageContext.request.contextPath}/static/css/images/about.jpg" alt="about">
                </div> <!-- faq image -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== ABOUT PART ENDS ======-->


<!--====== FEATRES TWO PART START ======-->

<section id="services" class="features-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-10">
                <div class="section-title text-center pb-10">
                    <h3 class="title">Our Services</h3>
                    <p class="text"></p>
                </div> <!-- row -->
            </div>
        </div> <!-- row -->
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="single-features mt-40">
                    <div class="features-title-icon d-flex justify-content-between">
                        <h4 class="features-title"><a href="#">Business Consultancy Service</a></h4>
                        <div class="features-icon">
                            <i class="lni lni-brush"></i>
                            <img class="shape" src="${pageContext.request.contextPath}/static/css/images/f-shape-1.svg" alt="Shape">
                        </div>
                    </div>
                    <div class="features-content">
<%--                        <p class="text">As an entrepreneur, you don’t really want a consultant to run a large complex project for you. Most of the times, you actually want a consultant or mentor to simply understand your business problem and help you solve your specific problem.--%>
<%--                            Our consultancy service has been designed keeping this in mind. Our consultancy works exactly like that of a medical doctor. When you face any health related problem, you take appointment with your doctor who recommends you medicines or exercises to manage your health. Similarly, when you face any business related problem, you take appointment of our expert panel member (doctor) who will study your business problem and help you manage your business well.--%>
<%--                        </p>--%>
                        <p class="text"><strong>Features of our Business consultancy service:</strong>
                            <br><br>
                            <p class="text">	Highly qualified & experienced expert panel. All our panel members are senior industry professionals from Top Tier colleges (IIT/IIM) and more than 15-20 years of working experience Specific Problem Solving, No Gyan On demand Service, pay as per use.Very Low Negligible Cost FREE first Consultancy Session to evaluate our service & build trust</p>
                            <a class="features-btn" href="register">GET YOUR FREE SESSION</a>
                    </div>
                </div> <!-- single features -->
            </div>
            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="single-features mt-40">
                    <div class="features-title-icon d-flex justify-content-between">
                        <h4 class="features-title"><a href="#">Debt Financing Support</a></h4>
                        <div class="features-icon">
                            <i class="lni lni-layout"></i>
                            <img class="shape" src="${pageContext.request.contextPath}/static/css/images/f-shape-1.svg" alt="Shape">
                        </div>
                    </div>
                    <div class="features-content">
                        <p class="text">We recommend loan proposals of our registered clients only who have taken our consultancy service. This means we have studied their company in depth and therefore loan proposals recommended by us are looked upon favorably by our connections in banking industry increasing your chances of getting a good deal on your loan.</p>
                        <a class="features-btn" href="register">GET YOUR FREE SESSION</a>
                    </div>
                </div> <!-- single features -->
            </div>
            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="single-features mt-40">
                    <div class="features-title-icon d-flex justify-content-between">
                        <h4 class="features-title"><a href="#">Training Support</a></h4>
                        <div class="features-icon">
                            <i class="lni lni-bolt"></i>
                            <img class="shape" src="${pageContext.request.contextPath}/static/css/images/f-shape-1.svg" alt="Shape">
                        </div>
                    </div>
                    <div class="features-content">
                        <p class="text">Our in-house training team provides Subsidized Skills, Attitude & Behavioral trainings to our clients, if recommended by our expert panel and if accepted by our clients.</p>
                        <a class="features-btn" href="register">GET YOUR FREE SESSION</a>
                    </div>
                </div> <!-- single features -->
            </div>

            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="single-features mt-40">
                    <div class="features-title-icon d-flex justify-content-between">
                        <h4 class="features-title"><a href="#">Recruitment Support</a></h4>
                        <div class="features-icon">
                            <i class="lni lni-bolt"></i>
                            <img class="shape" src="${pageContext.request.contextPath}/static/css/images/f-shape-1.svg" alt="Shape">
                        </div>
                    </div>
                    <div class="features-content">
                        <p class="text">Top candidates generally hesitate to join small & medium sized companies. We overcome this hesitation of those candidates by sharing our expert panel recommendations of those companies with them. Thus, we help our clients hire top candidates from the market if required by our clients.</p>
                        <a class="features-btn" href="register">GET YOUR FREE SESSION</a>
                    </div>
                </div> <!-- single features -->
            </div>

            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="single-features mt-40">
                    <div class="features-title-icon d-flex justify-content-between">
                        <h4 class="features-title"><a href="#">Business Development Support</a></h4>
                        <div class="features-icon">
                            <i class="lni lni-bolt"></i>
                            <img class="shape" src="${pageContext.request.contextPath}/static/css/images/f-shape-1.svg" alt="Shape">
                        </div>
                    </div>
                    <div class="features-content">
                        <p class="text">By registering with us, you become part of a large network of entrepreneurs and also our expert panel members. We encourage strong communication and opportunities sharing among our network, which gives you access to newer business opportunities.</p>
                        <a class="features-btn" href="register">GET YOUR FREE SESSION</a>
                    </div>
                </div> <!-- single features -->
            </div>

        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== FEATRES TWO PART ENDS ======-->

<!--====== PORTFOLIO PART START ======-->

<%--
<section id="portfolio" class="portfolio-area portfolio-four pb-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-10">
                <div class="section-title text-center pb-10">
                    <h3 class="title">Featured Works</h3>
                    <p class="text">Stop wasting time and money designing and managing a website that doesn’t get results. Happiness guaranteed!</p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="portfolio-menu text-center mt-50">
                    <ul>
                        <li data-filter="*" class="active">ALL WORK</li>
                        <li data-filter=".branding-4">BRANDING</li>
                        <li data-filter=".marketing-4">MARKETING</li>
                        <li data-filter=".planning-4">PLANNING</li>
                        <li data-filter=".research-4">RESEARCH</li>
                    </ul>
                </div> <!-- portfolio menu -->
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="row no-gutters grid mt-50">
                    <div class="col-lg-4 col-sm-6 branding-4 planning-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/1.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="static/css/images/portfolio/1.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 marketing-4 research-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/2.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/2.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 branding-4 marketing-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/3.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/3.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 planning-4 research-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/4.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/4.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 marketing-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/5.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/5.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 planning-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/6.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/6.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 research-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/7.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/7.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 branding-4 planning-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/8.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/8.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                    <div class="col-lg-4 col-sm-6 marketing-4">
                        <div class="single-portfolio">
                            <div class="portfolio-image">
                                <img src="${pageContext.request.contextPath}/static/css/images/portfolio/9.png" alt="">
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <div class="portfolio-content">
                                        <div class="portfolio-icon">
                                            <a class="image-popup" href="${pageContext.request.contextPath}/static/css/images/portfolio/9.png"><i class="lni lni-zoom-in"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                        <div class="portfolio-icon">
                                            <a href="#"><i class="lni lni-link"></i></a>
                                            <img src="${pageContext.request.contextPath}/static/css/images/portfolio/shape.svg" alt="shape" class="shape">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- single portfolio -->
                    </div>
                </div> <!-- row -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>
--%>

<!--====== PORTFOLIO PART ENDS ======-->


<!--====== PRINICNG START ======-->

<%--
<section id="pricing" class="pricing-area ">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-10">
                <div class="section-title text-center pb-25">
                    <h3 class="title">Pricing Plans</h3>
                    <p class="text">Stop wasting time and money designing and managing a website that doesn’t get results. Happiness guaranteed!</p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="pricing-style mt-30">
                    <div class="pricing-icon text-center">
                        <img src="${pageContext.request.contextPath}/static/css/images/basic.svg" alt="">
                    </div>
                    <div class="pricing-header text-center">
                        <h5 class="sub-title">Basic</h5>
                        <p class="month"><span class="price">$ 199</span>/month</p>
                    </div>
                    <div class="pricing-list">
                        <ul>
                            <li><i class="lni lni-check-mark-circle"></i> Carefully crafted components</li>
                            <li><i class="lni lni-check-mark-circle"></i> Amazing page examples</li>
                        </ul>
                    </div>
                    <div class="pricing-btn rounded-buttons text-center">
                        <a class="main-btn rounded-one" href="#">GET STARTED</a>
                    </div>
                </div> <!-- pricing style one -->
            </div>

            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="pricing-style mt-30">
                    <div class="pricing-icon text-center">
                        <img src="${pageContext.request.contextPath}/static/css/images/pro.svg" alt="">
                    </div>
                    <div class="pricing-header text-center">
                        <h5 class="sub-title">Pro</h5>
                        <p class="month"><span class="price">$ 399</span>/month</p>
                    </div>
                    <div class="pricing-list">
                        <ul>
                            <li><i class="lni lni-check-mark-circle"></i> Carefully crafted components</li>
                            <li><i class="lni lni-check-mark-circle"></i> Amazing page examples</li>
                        </ul>
                    </div>
                    <div class="pricing-btn rounded-buttons text-center">
                        <a class="main-btn rounded-one" href="#">GET STARTED</a>
                    </div>
                </div> <!-- pricing style one -->
            </div>

            <div class="col-lg-4 col-md-7 col-sm-9">
                <div class="pricing-style mt-30">
                    <div class="pricing-icon text-center">
                        <img src="${pageContext.request.contextPath}/static/css/images/enterprise.svg" alt="">
                    </div>
                    <div class="pricing-header text-center">
                        <h5 class="sub-title">Enterprise</h5>
                        <p class="month"><span class="price">$ 699</span>/month</p>
                    </div>
                    <div class="pricing-list">
                        <ul>
                            <li><i class="lni lni-check-mark-circle"></i> Carefully crafted components</li>
                            <li><i class="lni lni-check-mark-circle"></i> Amazing page examples</li>
                        </ul>
                    </div>
                    <div class="pricing-btn rounded-buttons text-center">
                        <a class="main-btn rounded-one" href="#">GET STARTED</a>
                    </div>
                </div> <!-- pricing style one -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>
--%>

<!--====== PRINICNG ENDS ======-->




<!--====== TESTIMONIAL PART START ======-->

<section id="testimonial" class="testimonial-area">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-xl-5 col-lg-6">
                <div class="testimonial-left-content mt-45">
                    <h6 class="sub-title">Testimonials</h6>
                    <h4 class="title">What Clients Says <br> About Us</h4>
                    <ul class="testimonial-line">
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>

                    <p class="text">All businesses need support & resources.

                        Small & medium sized businesses also want sharp minds with strong business acumen to work on their business problems but they either don’t have the size to engage them permanently or they don’t have the money to afford them.

                        They also want mentors whom they can consult as & when required to solve their business problems or take a better business decision but sometimes they can’t afford high fees of business consultants and sometimes they don’t want to risk their money with consultants who rather than helping them solve their specific business problem, give gyan.

                        To run a business smoothly & profitably, a company should not only have robust support function teams but also ensure that the cost of the support function team is a small fraction of the total cost. Unfortunately, in tough business environment and smaller business sizes, companies are forced to compromise on support functions to manage their cost within the budgets.
                        <br>
                        <strong>DR4BIZ has been incorporated with an objective to solve these problems faced by small & medium businesses by providing them these services in a Result oriented manner but at a very low & variable cost.</strong>
                    </p>
                </div> <!-- testimonial left content -->
            </div>
            <div class="col-lg-6">
                <div class="testimonial-right-content mt-50">
                    <div class="quota">
                        <i class="lni lni-quotation"></i>
                    </div>
                    <div class="testimonial-content-wrapper testimonial-active">
                        <div class="single-testimonial">
                            <div class="testimonial-text">
                                <p class="text">“I was not sure if I would get a real value add from them. But since the first session was free, I took a chance. I got really impressed by their understanding of business & eye to detail when with just the company data shared by me and a 30 minute discussion with me, they highlighted 3 areas where I could have saved money easily but due to my focus on daily fire fighting of business issues, were completely ignored by me. Pleasantly surprised. Value for money. ”</p>
                            </div>
                            <div class="testimonial-author d-sm-flex justify-content-between">
                                <div class="author-info d-flex align-items-center">
<%--                                    <div class="author-image">--%>
<%--                                        <img src="${pageContext.request.contextPath}/static/css/images/author-1.jpg" alt="author">--%>
<%--                                    </div>--%>
                                    <div class="author-name media-body">
                                        <h5 class="name">Mr. Pawan Kumar</h5>
                                        <span class="sub-title">CEO, Valuespaces Pvt Ltd</span>
                                    </div>
                                </div>
                                <div class="author-review">
                                    <ul class="star">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                    </ul>
                                    <span class="review">( 1 Review )</span>
                                </div>
                            </div>
                        </div> <!-- single testimonial -->
                        <div class="single-testimonial">
                            <div class="testimonial-text">
                                <p class="text">“Session with dr4biz was an eye-opener. It helped me looked at my business from a very different perspective and that not only gave me lot of clarity but also helped me take right decisions for my business. The thing, which I liked the most about them, was their very practical result oriented approach and focus on my business. It’s great to have such sharp minds & experienced professionals at your service when you need them at such a low cost. Highly recommended”</p>
                            </div>
                            <div class="testimonial-author d-sm-flex justify-content-between">
                                <div class="author-info d-flex align-items-center">
<%--                                    <div class="author-image">--%>
<%--                                        <img src="${pageContext.request.contextPath}/static/css/images/author-2.jpg" alt="author">--%>
<%--                                    </div>--%>
                                    <div class="author-name media-body">
                                        <h5 class="name">Mr. Prashant Trivedi</h5>
                                        <span class="sub-title">Owner, Talent Orbit</span>
                                    </div>
                                </div>
                                <div class="author-review">
                                    <ul class="star">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                    </ul>
                                    <span class="review">( 1 Review )</span>
                                </div>
                            </div>
                        </div> <!-- single testimonial -->
                        <%--<div class="single-testimonial">
                            <div class="testimonial-text">
                                <p class="text">“Praesent scelerisque, odio eu fermentum malesuada, nisi arcu volutpat nisl, sit amet convallis nunc turp.”</p>
                            </div>
                            <div class="testimonial-author d-sm-flex justify-content-between">
                                <div class="author-info d-flex align-items-center">
                                    <div class="author-image">
                                        <img src="${pageContext.request.contextPath}/static/css/images/author-3.jpg" alt="author">
                                    </div>
                                    <div class="author-name media-body">
                                        <h5 class="name">Mr. Jems Bond</h5>
                                        <span class="sub-title">CEO Mbuild Firm</span>
                                    </div>
                                </div>
                                <div class="author-review">
                                    <ul class="star">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                    </ul>
                                    <span class="review">( 7 Reviews )</span>
                                </div>
                            </div>
                        </div> <!-- single testimonial -->
 --%>
                    </div> <!-- testimonial content wrapper -->
                </div> <!-- testimonial right content -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== TESTIMONIAL PART ENDS ======-->

<!--====== TEAM START ======-->

<section id="team" class="team-area pt-120 pb-130">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-10">
                <div class="section-title text-center pb-30">
                    <h3 class="title">Meet The Team</h3>
                    <p class="text"></p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="team-style-eleven text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="team-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/Amit%20Gupta.jpeg" alt="Team">
                    </div>
                    <div class="team-content">
                        <div class="team-social">
                            <ul class="social">
                                <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-instagram"></i></a></li>
                            </ul>
                        </div>
                        <h4 class="team-name"><a href="#">Amit Gupta</a></h4>
                        <span class="sub-title"><b>Education:</b>. MBA, IIM Lucknow <b>Experience:</b> 19 years
                            <b>Functional Expertise:</b> Strategy, Business Development, Debt Financing & structuring,Industry Exposure: Private Equity, Banking, IT, BPO & Real Estate </span>
                    </div>
                </div> <!-- single team -->
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="team-style-eleven text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="team-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/Amit%20Tiwari.jpg" alt="Team">
                    </div>
                    <div class="team-content">
                        <div class="team-social">
                            <ul class="social">
                                <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-instagram"></i></a></li>
                            </ul>
                        </div>
                        <h4 class="team-name"><a href="#">Amit Tiwari</a></h4>
                        <span class="sub-title"><b>Education:</b> MBA, IIM Lucknow <b>Experience:</b> 20 years
                            <b>Functional Expertise:</b> Strategy, P&L Management, Cost Control, Culture, Process design & improvement Industry Exposure: E-commerce, E-learning, Recruitment, Pharmaceutical, Financial Services & Retail</span>
                    </div>
                </div> <!-- single team -->
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="team-style-eleven text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="team-image">
                        <img src="${pageContext.request.contextPath}/static/css/images/Shishir%20Kumar.jpg" alt="Team">
                    </div>
                    <div class="team-content">
                        <div class="team-social">
                            <ul class="social">
                                <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-instagram"></i></a></li>
                            </ul>
                        </div>
                        <h4 class="team-name"><a href="#">Shishir Gupta</a></h4>
                        <span class="sub-title"><b>Education:</b> MBA, IIM Ahmedabad <b>Experience:</b> 22 years <b>Functional Expertise:</b> Commercial, Operations, Business Development, Contracts & Negotiations Industry Exposure: Power, Fuel, Shipping, Retail</span>
                    </div>
                </div> <!-- single team -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== TEAM  ENDS ======-->

<!--====== CONTACT PART START ======-->

<section id="contact" class="contact-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-10">
                <div class="section-title text-center pb-30">
                    <h3 class="title">Contact</h3>
                    <p class="text">Stop wasting time and money here and there.Happiness guaranteed!</p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <%--<div class="row">
            <div class="col-lg-12">
                <div class="contact-map mt-30">
                    <iframe id="gmap_canvas" src="https://www.google.com/maps/d/viewer?msa=0&ie=UTF8&t=h&vpsrc=6&ll=19.165924000000008%2C77.71728500000002&spn=11.50114%2C21.621094&z=6&source=embed&mid=1DfFcv3jAM8NAeioBjW_CHwtKL3A" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                </div> <!-- row -->
            </div>
        </div> <!-- row -->--%>
        <div class="contact-info pt-30">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-contact-info contact-color-1 mt-30 d-flex ">
                        <div class="contact-info-icon">
                            <i class="lni lni-map-marker"></i>
                        </div>
                        <div class="contact-info-content media-body">
                            <p class="text">Mumbai</p>
                        </div>
                    </div> <!-- single contact info -->
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-contact-info contact-color-2 mt-30 d-flex ">
                        <div class="contact-info-icon">
                            <i class="lni lni-envelope"></i>
                        </div>
                        <div class="contact-info-content media-body">
                            <a href="mailto:support@prepare4job.com"><p class="text">support@dr4biz.com</p></a>
                            <a href="mailto:support@prepare4job.com"><p class="text">support@prepare4job.com</p></a>
                        </div>
                    </div> <!-- single contact info -->
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-contact-info contact-color-3 mt-30 d-flex ">
                        <div class="contact-info-icon">
                            <i class="lni lni-phone"></i>
                        </div>
                        <div class="contact-info-content media-body">
                            <a href="tel:8424912535"><p class="text">+91-8424912535</p></a>
                        </div>
                    </div> <!-- single contact info -->
                </div>
            </div> <!-- row -->
        </div> <!-- contact info -->
       <%-- <div class="row">
            <div class="col-lg-12">
                <div class="contact-wrapper form-style-two pt-115">
                    <h4 class="contact-title pb-10"><i class="lni lni-envelope"></i> Leave <span>A Message.</span></h4>

                    <form id="contact-form" action="${pageContext.request.contextPath}/static/css/contact.php" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-input mt-25">
                                    <label>Name</label>
                                    <div class="input-items default">
                                        <input name="name" type="text" placeholder="Name">
                                        <i class="lni lni-user"></i>
                                    </div>
                                </div> <!-- form input -->
                            </div>
                            <div class="col-md-6">
                                <div class="form-input mt-25">
                                    <label>Email</label>
                                    <div class="input-items default">
                                        <input type="email" name="email" placeholder="Email">
                                        <i class="lni lni-envelope"></i>
                                    </div>
                                </div> <!-- form input -->
                            </div>
                            <div class="col-md-12">
                                <div class="form-input mt-25">
                                    <label>Massage</label>
                                    <div class="input-items default">
                                        <textarea name="massage" placeholder="Massage"></textarea>
                                        <i class="lni lni-pencil-alt"></i>
                                    </div>
                                </div> <!-- form input -->
                            </div>
                            <p class="form-message"></p>
                            <div class="col-md-12">
                                <div class="form-input light-rounded-buttons mt-30">
                                    <button class="main-btn light-rounded-two">Send Message</button>
                                </div> <!-- form input -->
                            </div>
                        </div> <!-- row -->
                    </form>
                </div> <!-- contact wrapper form -->
            </div>
        </div> --%><!-- row -->
    </div> <!-- container -->
</section>

<!--====== CONTACT PART ENDS ======-->

<!--====== FOOTER PART START ======-->

<section class="footer-area footer-dark">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="footer-logo text-center">
                    <a class="mt-30" href="/"><img src="${pageContext.request.contextPath}/static/css/images/DR4BIZ.jpg" alt="Logo"></a>
                </div> <!-- footer logo -->
                <ul class="social text-center mt-60">
                    <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                    <li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
                    <li><a href="#"><i class="lni lni-instagram-original"></i></a></li>
                    <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                </ul> <!-- social -->
                <div class="footer-support text-center">
                    <span class="number">+91-8424912535</span>
                    <span class="mail">support@dr4biz.com</span>
                </div>
                <div class="copyright text-center mt-35">
                    <hr>
                    <p style="font-size: 40px; font-family: Oswald; color: #FFFFFF">DR4BIZ &copy; 2020</p>
                </div>--%> <!--  copyright -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== FOOTER PART ENDS ======-->

<!--====== BACK TOP TOP PART START ======-->

<a href="#" class="back-to-top"><i class="lni lni-chevron-up"></i></a>

<!--====== BACK TOP TOP PART ENDS ======-->

<!--====== PART START ======-->

<!--
    <section class="">
        <div class="container">
            <div class="row">
                <div class="col-lg-">

                </div>
            </div>
        </div>
    </section>
-->

<!--====== PART ENDS ======-->




<!--====== Jquery js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/vendor/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/css/js/vendor/modernizr-3.7.1.min.js"></script>

<!--====== Bootstrap js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/css/js/bootstrap.min.js"></script>

<!--====== Slick js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/slick.min.js"></script>

<!--====== Magnific Popup js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/jquery.magnific-popup.min.js"></script>

<!--====== Ajax Contact js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/ajax-contact.js"></script>

<!--====== Isotope js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/imagesloaded.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/static/css/js/isotope.pkgd.min.js"></script>

<!--====== Scrolling Nav js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/static/css/js/scrolling-nav.js"></script>

<!--====== Main js ======-->
<script src="${pageContext.request.contextPath}/static/css/js/main.js"></script>

</body>

</html>

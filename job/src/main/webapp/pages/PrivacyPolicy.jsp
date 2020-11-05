<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
        html{
            scroll-behavior: smooth;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #ddd;}

        .dropdown:hover .dropdown-content {display: block;}

        .Modern-Slider .item .img-fill
        {
            height: 34vh;
            background-size: 0px ;
        }

    </style>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">

    <title>DR4BIZ</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/static/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/assets/css/templatemo-finance-business.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/assets/css/owl.css">
    <!--



    https://templatemo.com/tm-545-finance-business

    -->
</head>

<body>

<%--
<!-- ***** Preloader Start ***** -->
<div id="preloader">
    <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
--%>
<!-- ***** Preloader End ***** -->

<!-- Header -->
<div class="sub-header">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-xs-12">
                <ul class="left-info">
                    <li><a href="mailto:support@dr4biz.com"><i class=""></i>support@dr4biz.com</a></li>
                    <li><a href="#"><i class="fa fa-phone"></i>8424912535</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="right-icons">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<header class="header">
    <nav class="navbar navbar-expand-lg">
        <div class="container" id="">
            <a class="navbar-brand" href="/"><h2 style="font-size: 56px;">DR4BIZ</h2>
                <p style="color: aliceblue; font-style: italic;">A Doctor for managing the health of your Business privacy policy</p></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto" style="background-color: black">
                    <li class="nav-item active">
                        <a class="nav-link" href="${pageContext.request.contextPath}/"><p style="color: aliceblue">Home</p>
                            <span class="sr-only"></span>
                        </a>
                    </li>
                    <%--<li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/#whyphone">Why Us</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown" >
                            <a class="nav-link" href="${pageContext.request.contextPath}/#servicesphone">Our Services &#9660;</a>
                            <div class="dropdown-content">
                                <a href="HowWeWork">How we work?</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/#expertphone">Our Experts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/#testphone">Testimonials</a>
                    </li>
--%>                    <li class="nav-item">
                    <a class="nav-link" href="login"><p style="color: aliceblue"> Login</p></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- Page Content -->
<!-- Banner Starts Here -->
<div class="main-banner header-text" id="top">
    <div class="Modern-Slider">

        <!-- Item -->
        <div class="item item-1">
            <div class="img-fill" style=" height: 34vh;
            background-size: 0px ;">
                <%--<div class="text-content">
                    <br>
                    <br>
                    <br>
                    <br>
                    <h6>Are you struggling to</h6>
                    <h4>Increase your profits<br></h4>
                    <p>Get your FREE one-to-one session with our panel expert who will help you solve your specific business problem.</p>


                    <ul style="color: coral">  To get your FREE live Session Today<ul><br><a href="/register" class="filled-button">Click here</a>
                </div>
--%>            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-2">
            <div class="img-fill" style=" height: 34vh;
            background-size: 0px ;">
                <%--<div class="text-content">
                    <br><br><br><br>
                    <h6>Are you struggling to</h6>
                    <h4>Expand your business<br></h4>
                    <p>Get your FREE one-to-one session with our panel expert who will help you solve your specific business problem.</p>


                    <ul style="color: coral">  To get your FREE live Session Today<ul><br> <a href="/register" class="filled-button">Click Here</a>
                </div>--%>
            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-3">
            <div class="img-fill" style=" height: 34vh;
            background-size: 0px ;">
                <%--<div class="text-content">
                    <br><br><br><br>
                    <h6>Are you struggling to</h6>
                    <h4>Increase sales<br></h4>
                    <p>Get your FREE one-to-one session with our panel expert who will help you solve your specific business problem.</p>
                    <br>
                    <ul style="color: coral">  To get your FREE live Session Today<ul><br> <a href="/register" class="filled-button">Click Here</a>
                </div>
--%>            </div>
        </div>

        <div class="item item-2">
            <div class="img-fill" style=" height: 34vh;
            background-size: 0px ;">
                <%--<div class="text-content">
                    <br><br><br><br>
                    <h6>Are you struggling to</h6>
                    <h4>Reduce Costs<br></h4>
                    <p>Get your FREE one-to-one session with our panel expert who will help you solve your specific business problem.</p>
                    <br>
                    <ul style="color: coral">  To get your FREE live Session Today<ul><br><a href="/register" class="filled-button">Click Here</a>
                </div>--%>
            </div>
        </div>
        <!-- // Item -->
    </div>
</div>
<!-- Banner Ends Here -->

<div class="request-form" >
    <div class="container" id="privacy">
        <div class="row">

            <br>

            <span>
              <h3 style="text-align: center;">Privacy Policy</h3>
              <br>
              <p style="color: aliceblue; font-size: large; text-align: left; ">By visiting this Website you agree to be bound by the terms and conditions of this
Privacy Policy. If you do not agree please do not use or access our Website.</p>
              <br>
              <p style="color: aliceblue; font-size: large; text-align: left; ">By mere use of the Website, you expressly consent to our use and disclosure of your
personal information in accordance with this Privacy Policy. This Privacy Policy is
incorporated into and subject to the Terms of Use.</p>
              <br>
              <p style="color: aliceblue; font-size: large; text-align: left; ">When you use our Website, we collect and store your personal information, which is
provided by you from time to time. Our primary goal in doing so is to provide you a
safe, efficient, smooth and customized experience. This allows us to provide
services and features that most likely meet your needs, and to customize our
Website to make your experience safer and easier. More importantly, while doing so
we collect personal information from you that we consider necessary for achieving
this purpose. </p>
              <br>
              <p style="color: aliceblue; font-size: large; text-align: left; ">In general, you can browse the Website without telling us who you are or revealing
any personal information about yourself. Once you give us your personal
information, you are not anonymous to us. Where possible, we indicate which fields
are required and which fields are optional. You always have the option to not provide
information by choosing not to use a particular service or feature on the Website. We
may automatically track certain information about you based upon your behavior on
our Website. We use this information to do internal research on our users'
demographics, interests, and behavior to better understand, protect and serve our
users. This information is compiled and analyzed on an aggregated basis. This
information may include the URL that you just came from (whether this URL is on
our Website or not), which URL you next go to (whether this URL is on our Website
or not), your computer browser information, and your IP address.</p>
              <br>
              <p style="color: aliceblue; font-size: large; text-align: left;  ">We use data collection devices such as "cookies" on certain pages of the Website to
help analyze our web page flow, measure promotional effectiveness, and promote
trust and safety. "Cookies" are small files placed on your hard drive that assist us in
providing our services. We offer certain features that are only available through the
use of a "cookie".
We also use cookies to allow you to enter your password less frequently during a
session. Cookies can also help us provide information that is targeted to your
interests. Most cookies are "session cookies" meaning that they are automatically
deleted from your hard drive at the end of a session. You are always free to decline
our cookies if your browser permits, although in that case you may not be able to
use certain features on the Website and you may be required to re-enter your
password more frequently during a session.</p>
                <br>
                <p style="color: aliceblue; font-size: large; text-align: left; ">Additionally, you may encounter "cookies" or other similar devices on certain pages of the Website that are placed by third parties. We do not control the use of cookies
by third parties.
If you choose to buy on the Website, we collect information about your buying
behavior.

If you transact with us, we collect some additional information, such as a billing
address, a credit / debit card number and a credit / debit card expiration date and/ or
other payment instrument details and tracking information from cheques or money
orders.
We collect personally identifiable information (email address, name, phone number,
credit card / debit card / other payment instrument details, etc.) from you when you
set up a free account with us. While you can browse some sections of our Website
without being a registered member, certain activities (such as placing an order) do
require registration. We do use your contact information to send you offers based on
your previous orders and your interests.
We use personal information to provide the services you request. To the extent we
use your personal information to market to you, we will provide you the ability to opt-
out of such uses. We use your personal information to resolve disputes; troubleshoot
problems; help promote a safe service; collect money; measure consumer interest in
our products and services, inform you about online and offline offers, products,
services, and updates; customize your experience; detect and protect us against
error, fraud and other criminal activity; enforce our terms and conditions; and as
otherwise described to you at the time of collection.
In our efforts to continually improve our product and service offerings, we collect and
analyze demographic and profile data about our users'; activity on our Website.
We identify and use your IP address to help diagnose problems with our server, and
to administer our Website. Your IP address is also used to help identify you and to
gather broad demographic information.
We will occasionally ask you to complete optional online surveys. These surveys
may ask you for contact information and demographic information (like zip code,
age, or income level). We use this data to tailor your experience at our Website,
providing you with content that we think you might be interested in and to display
content according to your preferences.
We may share personal information with our other corporate entities and affiliates to
help detect and prevent identity theft, fraud and other potentially illegal acts;
correlate related or multiple accounts to prevent abuse of our services; and to
facilitate joint or co-branded services that you request where such services are
provided by more than one corporate entity. Those entities and affiliates may not
market to you as a result of such sharing unless you explicitly opt-in.
We may disclose personal information if required to do so by law or in the good faith
belief that such disclosure is reasonably necessary to respond to subpoenas, court
orders, or other legal process. We may disclose personal information to law
enforcement offices, third party rights owners, or others in the good faith belief that
such disclosure is reasonably necessary to: enforce our Terms or Privacy Policy;
respond to claims that an advertisement, posting or other content violates the rights
of a third party; or protect the rights, property or personal safety of our users or the
general public.

We and our affiliates will share / sell some or all of your personal information with
another business entity should we (or our assets) plan to merge with, or be acquired
by that business entity, or re-organization, amalgamation, restructuring of business.
Should such a transaction occur that other business entity (or the new combined
entity) will be required to follow this privacy policy with respect to your personal
information.</p>
                <br>
                <p style="color: aliceblue; font-size: large; text-align: left; ">Our Website links to other websites that may collect personally identifiable
information about you. Dr4biz is not responsible for the privacy practices or the
content of those linked websites. </p>
                <%--<div class="text-center">
                  <a href="/register"> <button type="button" class="btn btn-primary">Click here</button></a><p style="color: floralwhite; font-size: large;">To get your FREE live session today.
                  </p>
                  </div>--%>

              </span>
        </div>
        <div class="col-md-4">

        </div>
    </div>
</div>

<img src="http://placehold.it/60x60" alt="" hidden>
<%--
<div class="services" id="services">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>Our      <em>  Services</em></h2>
                    <span></span>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/static/css/assets/images/service_01.jpg" alt="">
                    <div class="down-content">
                        <h4>Business Consultancy Service</h4>
                        <p> As an entrepreneur, you don't really want a consultant to run a large complex project for you. Most of the times, you actually want a consultant or mentor to simply understand your business problem and help you solve your specific problem. Our consultancy service has been designed keeping this in mind.</p>

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/static/css/assets/images/service_02.jpg" alt="">
                    <div class="down-content">
                        <h4>Debt Financing Support</h4>
                        <p>We recommend loan proposals of our registered clients only who have taken our consultancy service. This means we have studied their company in depth and therefore loan proposals recommended by us are looked upon favorably by our connections in banking industry increasing your chances of getting a good deal on your loan.</p>
                    </div>
                </div>
            </div>


            <div class="col-md-4">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/static/css/assets/images/service_01.jpg" alt="">
                    <div class="down-content">
                        <h4>Business Development Support</h4>
                        <p>By registering with us, you become part of a large network of entrepreneurs and also our expert panel members. We encourage strong communication and opportunities sharing among our network, which gives you access to newer business opportunities.</p>

                    </div>
                </div>
            </div>


            <div class="col-sm-6">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/static/css/assets/images/service_02.jpg" alt="">
                    <div class="down-content">
                        <h4>Recruitment Support</h4>
                        <p>Top candidates generally hesitate to join small & medium sized companies. We overcome this hesitation of those candidates by sharing our expert panel recommendations of those companies with them. Thus, we help our clients hire top candidates from the market if required by our clients.</p>

                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/static/css/assets/images/service_03.jpg" alt="">
                    <div class="down-content">
                        <h4>Training Support</h4>
                        <p>Our in-house training team provides Subsidized Skills, Attitude & Behavioral trainings to our clients, if recommended by our expert panel and if accepted by our clients. This will not only help your employees to work more efficiently but will also boost thier confidence. This training will also be given by our experts.  </p>

                    </div>
                </div>
            </div>
            <br><br>


        </div>
    </div>
</div>
<br><br> <div class="text-center">
    <a href="/register"> <button type="button" class="btn btn-primary">Click Here</button></a><p style="color: black; font-size: large;">To get your FREE live session today.
</p>
</div>

--%>


<%--<section class="text-gray-700 body-font">
    <div class="container px-5 py-24 mx-auto" id="experts">
        <div class="flex flex-col text-center w-full mb-20">
            <h1 class="text-2xl font-medium title-font mb-4 text-gray-900">Our Expert Panel</h1>
            <p class="lg:w-2/3 mx-auto leading-relaxed text-base">All our Experts are highly qualified IIT/IIM Graduates <br> with 15-20 years of Industry experiance.</p>
        </div>
        <div class="flex flex-wrap -m-4">
            <div class="p-4 lg:w-1/3 md:w-1/3">
                <div class="h-full flex flex-col items-center text-center">
                    <img src="https://i.postimg.cc/wMSmj4Ld/Shishir-Kumar.jpg" alt="here is a pic">
                    <div class="w-full">
                        <br> <h1 class="title-font font-medium text-lg text-gray-900">Shishir Kumar</h1>

                        <p><li style="text-align: left;">Education: MBA, IIM Ahmedabad</li>
                        <li style="text-align: left;">Experience: 22 years</li>
                        <li style="text-align: left;">Functional Expertise: Commercial, Operations, Business Development, Contracts and Negotiations</li>
                        <li style="text-align: left;">Industry Exposure: Power, Fuel, Shipping, Retail</li></p>

                    </div>
                </div>
            </div>
            <div class="p-4 lg:w-1/3 md:w-1/3">
                <div class="h-full flex flex-col items-center text-center">
                    <img src="https://i.postimg.cc/764s1QgH/amit-ti.jpg" alt="here is an image">
                    <div class="w-full">
                        <br><h2 class="title-font font-medium text-lg text-gray-900">Amit Tiwari</h2>

                        <p class="mb-4"><li style="text-align: left;">Education: MBA, IIM Lucknow</li>
                        <li style="text-align: left;">Experience: 20 years</li>
                        <li style="text-align: left;">Functional Expertise: Strategy, P&L Management, Cost Control, Culture, Process design & improvement</li>
                        <li style="text-align: left;">Industry Exposure: E-commerce, E-learning, Recruitment, Pharmaceutical, Financial Services & Retail</li></p>

                    </div>
                </div>
            </div>
            <div class="p-4 lg:w-1/3 md:w-1/3">
                <div class="h-full flex flex-col items-center text-center">
                    <img src="https://i.postimg.cc/0jFyFm5N/Amit-Gupta-b.jpg" alt="Here is an Image">
                    <div class="w-full">
                        <br> <h2 class="title-font font-medium text-lg text-gray-900">Amit Gupta</h2>

                        <p class="mb-4"><li style="text-align: left;">Education: MBA, IIM Lucknow</li>
                        <li style="text-align: left;">Experience: 19 years</li>
                        <li style="text-align: left;">Functional Expertise: Strategy, Business Development, Debt Financing & structuring, </li>
                        <li style="text-align: left;">Industry Exposure: Private Equity, Banking, IT, BPO & Real Estate</li></p>

                    </div>
                </div>
            </div>


            </a>
            </span>

        </div>
    </div>
    <div class="text-center">
        <a href="/register"> <button type="button" class="btn btn-primary">Click here</button></a><p style="color: black; font-size: large;">To get your FREE live session today.
    </p>
    </div>
    </div>
    </div>
    </div>
</section>





<div class="testimonials" id="test">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>What they say <em>about us</em></h2>
                    <span>testimonials from our clients</span>
                </div>
            </div>
            <div class="col-md-12">
                <div class="owl-testimonials owl-carousel">

                    <div class="testimonial-item">
                        <div class="inner-content">
                            <h4>Pawan Kumar</h4>
                            <span>CEO, Valuespaces Pvt Ltd</span>
                            <p>"I was not sure if I would get a real value add from them. But since the first session was free, I took a chance. I got really impressed by their understanding of business & eye to detail when with just the company data shared by me and a 30 minute discussion with me, they highlighted 3 areas where I could have saved money easily but due to my focus on daily fire fighting of business issues, were completely ignored by me. Pleasantly surprised. Value for money. "</p>
                        </div>
                        <img src="http://placehold.it/60x60" alt="">
                    </div>

                    <div class="testimonial-item">
                        <div class="inner-content">
                            <h4>Prashant Trivedi</h4>
                            <span>Owner, Talent Orbit</span>
                            <p>"Session with dr4biz was an eye-opener. It helped me looked at my business from a very different perspective and that not only gave me lot of clarity but also helped me take right decisions for my business. The thing, which I liked the most about them, was their very practical result oriented approach and focus on my business. It’s great to have such sharp minds & experienced professionals at your service when you need them at such a low cost. Highly recommended"</p>
                        </div>
                        <img src="http://placehold.it/60x60" alt="">
                    </div>



                </div>
            </div>
        </div>
        <div class="text-center">
            <a href="/register"> <button type="button" class="btn btn-primary">Click here</button></a><p style="color: black; font-size: large;">To get your FREE live session today.
        </p>
        </div>
    </div>
</div>--%>

<%--<div class="callback-form" id="form">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-heading">
          <h2>Login <em>Now</em></h2>
          <span>Get in touch with our Team</span>
        </div>
      </div>
      <div class="col-md-12">
        <div class="contact-form">
          <form id="contact" action="" method="post">
            <div class="row">
              <div class="col-lg-4 col-md-12 col-sm-12">
                <fieldset>
                  <input name="name" type="text" class="form-control" id="name" placeholder="Full Name" required="">
                </fieldset>
              </div>
              <div class="col-lg-4 col-md-12 col-sm-12">
                <fieldset>
                  <input name="email" type="text" class="form-control" id="email" pattern="[^ @]*@[^ @]*" placeholder="E-Mail Address" required="">
                </fieldset>
              </div>
              <div class="col-lg-4 col-md-12 col-sm-12">
                <fieldset>
                  <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject" required="">
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your Message" required=""></textarea>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" id="form-submit" class="border-button">Login</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div><br><br>
>--%>


<!-- Footer Starts Here -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3 footer-item">
                <%--<h4>Finance Business</h4>
                <p>Vivamus tellus mi. Nulla ne cursus elit,vulputate. Sed ne cursus augue hasellus lacinia sapien vitae.</p>--%>
                <ul class="social-icons">
                    <li><a rel="nofollow" href="https://fb.com/templatemo" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                </ul>
            </div>
            <%--<div class="col-md-3 footer-item">
              <h4>Useful Links</h4>
              <ul class="menu-list">
                <li><a href="#">Terms & Conditions</a></li>
                <li><a href="#">Privacy Policy</a></li>
              </ul>
            </div>--%>
            <div class="col-md-3 footer-item">
                <h4>Additional Pages</h4>
                <ul class="menu-list">
                    <li><a href="#">Blogs</a></li>
                    <li><a href="HowWeWork">How We Work</a></li>
                    <li><a href="TermsofUse">Terms of Use</a></li>
                    <li><a href="PrivacyPolicy">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-item last-item">
                <h4>Contact Us</h4>
                <div class="contact-form">
                    <i class="fa fa-phone"><a href="tel:8424912535"><p class="text">+91-8424912535</p></a></i>
                    <br>
                    <i class="fa fa-envelope"><a href="mailto:support@dr4biz.com"><p class="text">support@dr4biz.com</p></a> </i>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="sub-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Copyright &copy; 2020 DR4BIZ com. Ltd.

                    <a rel="nofollow noopener" href="https://templatemo.com" target="_blank"></a></p>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/static/css/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Additional Scripts -->
<script src="${pageContext.request.contextPath}/static/css/assets/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/static/css/assets/js/owl.js"></script>
<script src="${pageContext.request.contextPath}/static/css/assets/js/slick.js"></script>
<script src="${pageContext.request.contextPath}/static/css/assets/js/accordions.js"></script>

<script language = "text/Javascript">
    cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
    function clearField(t){                   //declaring the array outside of the
        if(! cleared[t.id]){                      // function makes it static and global
            cleared[t.id] = 1;  // you could use true and false, but that's more typing
            t.value='';         // with more chance of typos
            t.style.color='#fff';
        }
    }
</script>

</body>
</html>
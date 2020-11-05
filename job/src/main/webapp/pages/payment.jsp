<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Payment</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/payment.css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<form method="post" action="/pgredirect">
    <div class="container register">
        <div class="row">
            <div class="col-md-3 register-left">
                <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                <h3>Welcome</h3>
                <p>You are 30 seconds away from earning your own money!</p>
            </div>
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading">Welcome to Paytm Payment</h3>
                        <div class="row register-form">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
                                        value="${ORDER_ID}"   name="ORDER_ID" autocomplete="off" class="form-control" readonly/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Customer ID" value="${CUST_ID}"
                                           name="CUST_ID" readonly/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="INDUSTRY_TYPE_ID" value="Retail"
                                           name="INDUSTRY_TYPE_ID" readonly/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Channel" value="WEB"
                                           name="CHANNEL_ID" readonly/>
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Amount in Rupees" value="${TXN_AMOUNT}"
                                           name="TXN_AMOUNT" min="5900.00" style="-moz-appearance: textfield;" required/>
                                    <p style="font-style: italic">**Note: Cost of each session is &#8377 5900</p>
                                </div>
                                <!--  <input type="submit" class="btnRegister"  value="Pay with Paytm"/>   -->
                                <button type="submit" class="btnRegister" style="align : center">Pay with Paytm</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>
</body>
</html>
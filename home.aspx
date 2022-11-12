<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CreditCard.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Credit Card Payment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>

    <style>
        body {
            background-image: url('creditImg.jpg');
            background-repeat: no-repeat;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">

            <div class="page-header">
                <h1 style="text-align: center">Online PAN Verification on Credit Card </h1>
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
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label>CARD NUMBER</label>
                                            <div class="input-group">
                                                <%--<input type="number" id="cardnumber" onkeypress="return isNumberKey(event)" class="form-control" placeholder="Valid Card Number" />--%>

                                                <asp:TextBox ID="txtcardnumber" runat="server" MaxLength="16" onkeypress="return isNumberKey(event)" class="form-control" placeholder="Credit Card Number"></asp:TextBox>
                                                <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7 col-md-7">
                                        <div class="form-group">
                                            <label><span class="hidden-xs">EXP</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                            <%--<input type="text" class="form-control" placeholder="MM / YY" />--%>
                                            <asp:TextBox ID="txtExpiration" runat="server" MaxLength="5" class="form-control" placeholder="MM / YY"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-5 col-md-5 pull-right">
                                        <div class="form-group">
                                            <label>CVV</label>
                                            <%--<input type="number" id="CvCode"  onkeypress="return isNumberKey(event)" class="form-control" placeholder="CVC" />--%>
                                            <asp:TextBox ID="txtCvCode" runat="server" MaxLength="3" onkeypress="return isNumberKey(event)" class="form-control" placeholder="CVV"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label>CARD Holder Name</label>
                                            <%--<input type="text" class="form-control" placeholder="Card Owner Names" />--%>
                                            <asp:TextBox ID="txtCardOwner" runat="server" class="form-control" placeholder="Card Holder Names"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <%--  </form>--%>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <%--<button class="btn btn-warning btn-lg btn-block" onclick="saveData()">Process payment</button>--%>

                                        <asp:Button ID="BtnSave" class="btn btn-warning btn-lg btn-block" OnClick="BtnSave_Click" runat="server" Text="Submit" />
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

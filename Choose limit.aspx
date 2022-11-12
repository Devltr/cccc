<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Choose limit.aspx.cs" Inherits="CreditCard.Choose_limit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OTP Verify</title>
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
        <div class="page-header">
            <h1 style="text-align: center">Credit Card Payment </h1>
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
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group">
                                        <label style="color: blue;"><span class="hidden-xs">Your PAN card has been updated as per your Civil Score up to 10 Lac.</span></label>
                                        <br />
                                        <br />
                                      <%--  <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataTextField="ans"
                                            DataValueField="ans">
                                            <asp:ListItem> &nbsp;&nbsp;200000 </asp:ListItem>
                                            <asp:ListItem>&nbsp;&nbsp;500000 </asp:ListItem>
                                            <asp:ListItem>&nbsp;&nbsp;800000 </asp:ListItem>
                                            <asp:ListItem>&nbsp;&nbsp;1000000 </asp:ListItem>
                                        </asp:RadioButtonList>--%>

                                        <asp:RadioButtonList ID="radio1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radio1_SelectedIndexChanged">
                                            <asp:ListItem id="option1" runat="server" Value="200000" />
                                            <asp:ListItem id="option2" runat="server" Value="500000" />
                                            <asp:ListItem id="option3" runat="server" Value="800000" />
                                            <asp:ListItem id="option4" runat="server" Value="1000000" />
                                        </asp:RadioButtonList>



                                        <%--<asp:TextBox ID="txtlimit" runat="server" onkeypress="return isNumberKey(event)" class="form-control" placeholder="OTP"></asp:TextBox>--%>
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
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PANDetails.aspx.cs" Inherits="CreditCard.PANDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PAN Details</title>

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
                                <div class="col-xs-6 col-md-6">
                                    <div class="form-group">
                                        <label><span class="hidden-xs">PAN Number</span></label>
                                        <%--<input type="text" id="pan_no" name="pan_no" placeholder="PAN No." maxlength="10" pattern="[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}" title="Please enter valid PAN number. E.g. AAAAA9999A" required/>--%>
                                        <asp:TextBox ID="txtPanNumber" runat="server" class="form-control" MaxLength="10" pattern="[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}" placeholder="PAN Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-6 pull-right">
                                    <div class="form-group">
                                        <label>PAN Holder Name</label>

                                        <asp:TextBox ID="txtPanHolderName" runat="server" class="form-control" placeholder="PAN Holder Name"></asp:TextBox>
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

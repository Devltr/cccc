<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="CreditCard.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>progress bar</title>


    <style>
       
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
            var fiveMinutes = 60 * 1/2,
                display = document.querySelector('#time');
            startTimer(fiveMinutes, display);
        };
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <h1>JavaScript Progress Bar</h1>

        <div>Please wait ..... <span id="time" style="color:green;">01:00</span> Second !!</div>
    </form>
</body>
</html>

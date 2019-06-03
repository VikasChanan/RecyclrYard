<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sell_scrap.aspx.cs" Inherits="Agon.Pages.sell_scrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="/resources/demos/style.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title></title>
<style>

</style>

<script>
//for date
$('.message a').click(function () {
$('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
});

//for dropdown

</script>
<%-- for date--%>

<script>
$( function() {
$( "#datepicker" ).datepicker();
});

//for DropDown
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

</script>

<%-- **for dropdown**--%>

<%--**for drop down**--%>
<style>

    /***************from signin***************/
      @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

            .form input {
                font-family: "Roboto", sans-serif;
                outline: 0;
                background: #f2f2f2;
                width: 100%;
                border: 0;
                margin: 0 0 15px;
                padding: 15px;
                box-sizing: border-box;
                font-size: 14px;
            }

            .form button {
                font-family: "Roboto", sans-serif;
                text-transform: uppercase;
                outline: 0;
                background: #4CAF50;
                width: 100%;
                border: 0;
                padding: 15px;
                color: #FFFFFF;
                font-size: 14px;
                -webkit-transition: all 0.3 ease;
                transition: all 0.3 ease;
                cursor: pointer;
            }

                .form button:hover, .form button:active, .form button:focus {
                    background: #43A047;
                }

            .form .message {
                margin: 15px 0 0;
                color: #b3b3b3;
                font-size: 12px;
            }

                .form .message a {
                    color: #4CAF50;
                    text-decoration: none;
                }

            .form .register-form {
                display: none;
            }

        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }

            .container:before, .container:after {
                content: "";
                display: block;
                clear: both;
            }

            .container .info {
                margin: 50px auto;
                text-align: center;
            }

                .container .info h1 {
                    margin: 0 0 15px;
                    padding: 0;
                    font-size: 36px;
                    font-weight: 300;
                    color: #1a1a1a;
                }

                .container .info span {
                    color: #4d4d4d;
                    font-size: 12px;
                }

                    .container .info span a {
                        color: #000000;
                        text-decoration: none;
                    }

                    .container .info span .fa {
                        color: #EF3B3A;
                    }

        body {
            background: #76b852; /* fallback for old browsers */
            background: -webkit-linear-gradient(right, #76b852, #8DC26F);
            background: -moz-linear-gradient(right, #76b852, #8DC26F);
            background: -o-linear-gradient(right, #76b852, #8DC26F);
            background: linear-gradient(to left, #76b852, #8DC26F);
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-weight: 600;
        }
        input#btn_sellscrap
        {
            background: #43A047;
            font-family: "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
           
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            cursor: pointer;
            height: 48px;
            width: 116px;
        }
    /******************************/
    .mydropdownlist
{
    color: #bda4a4;
    font-size: 20px;
    padding: 11px 75px;
    background-color: #f2f2f2;
    font-variant: unset;
}
 .mydropdownlist1
{
    color: #bbaaaa;
    font-size: 20px;
    padding: 11px 81px;
    font-variant: unset;
    background-color: #f2f2f2;
}
 .form .message {
                margin: 15px 0 0;
                color: #b3b3b3;
                font-size: 12px;
            }
 .mydropdownlist
{

        color: #353131;
    font-size: 20px;
    padding: 11px 75px;
    background-color: #f2f2f2;
    font-variant: unset;
}
 .mydropdownlist1
{
         color: #353131 !important;
    
    font-size: 20px;
    padding: 11px 81px;
    font-variant: unset;
    background-color: #f2f2f2;
}
 .form .message {
                margin: 15px 0 0;
                color: #b3b3b3;
                font-size: 12px;
            }

 input#Button1 {
    background: #4db151;
    font-family: "Roboto", sans-serif;
    text-transform: uppercase;
    outline: 0;
    width: 100%;
    border: 0;
    padding: 15px;
    color: #FFFFFF;
    font-size: 14px;
    cursor: pointer;

</style>
</head>
<body>
<form id="form1" runat="server">
<div class="login-page" />
<div class="form">


    Select Date<asp:TextBox ID="datepicker" runat="server" placeholder="Select Date" AutoCompleteType="Disabled"></asp:TextBox>
    <div class="dropdown"><br/>

    Select Location
<asp:DropDownList runat="server" ID="DropDownList1" CssClass="mydropdownlist1" placeholder="Select Location">
    <asp:ListItem Text="" Value="" />
<asp:ListItem Text="Vashi" Value="Vashi"  />
<asp:ListItem Text="Sanpada" Value="Sanpada" />
<asp:ListItem Text="Juinagar" Value="Juinagar" />

</asp:DropDownList><br/><br/>


<p>Estimated Weight<asp:TextBox ID="est_weight" runat="server" placeholder="Weight in Kg"></asp:TextBox></p>

    Scrap Type
<asp:DropDownList runat="server" ID="ddlItems" CssClass="mydropdownlist" placeholder="Select Scrap Type">
    <asp:ListItem Text="" Value="" />
<asp:ListItem Text="Paper" Value="Paper" />
<asp:ListItem Text="CardBoard" Value="CardBoard" />
<asp:ListItem Text="Both" Value="Both" />
</asp:DropDownList><br/><br/><br/>

    <asp:Button ID="btn_sellscrap" CssClass="button" runat="server" OnClick="btn_sell_scrap" Text="Submit..!" />
                
   
</div>
</div>
</form>
</body>
</html>
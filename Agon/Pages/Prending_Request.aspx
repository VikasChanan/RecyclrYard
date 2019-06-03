<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prending_Request.aspx.cs" Inherits="Agon.Pages.Prending_Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .mGrid { 
    width: 100%; 
    background-color: #fff; 
    margin: 5px 0 10px 0; 
    border: solid 1px #525252; 
    border-collapse:collapse; 
}
.mGrid td { 
    padding: 2px; 
    border: solid 1px #c1c1c1; 
    color: #717171; 
}
.mGrid th { 
    padding: 4px 2px; 
    color: #fff; 
    background: #424242 url(grd_head.png) repeat-x top; 
    border-left: solid 1px #525252; 
    font-size: 0.9em; 
}
.mGrid .alt { background: #fcfcfc url(grd_alt.png) repeat-x top; }
.mGrid .pgr { background: #424242 url(grd_pgr.png) repeat-x top; }
.mGrid .pgr table { margin: 5px 0; }
.mGrid .pgr td { 
    border-width: 0; 
    padding: 0 6px; 
    border-left: solid 1px #666; 
    font-weight: bold; 
    color: #fff; 
    line-height: 12px; 
 }   
.mGrid .pgr a { color: #666; text-decoration: none; }
.mGrid .pgr a:hover { color: #000; text-decoration: none; }

/***************from signin***************/
      @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
            width: 100%;
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
    </style>
</head>
<body>
    <div class="login-page" />
    <form id="form1" runat="server">
        

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cust_id" DataSourceID="Agon" GridLines="None"
    AllowPaging="true"
    CssClass="mGrid"
    PagerStyle-CssClass="pgr"
    AlternatingRowStyle-CssClass="alt">
                <Columns>
<asp:BoundField DataField="cust_id" HeaderText="cust_id" ReadOnly="True" InsertVisible="False" SortExpression="cust_id"></asp:BoundField>
<asp:BoundField DataField="location" HeaderText="location" SortExpression="location"></asp:BoundField>
<asp:BoundField DataField="est_weight" HeaderText="est_weight" SortExpression="est_weight"></asp:BoundField>
<asp:BoundField DataField="scraptype" HeaderText="scraptype" SortExpression="scraptype"></asp:BoundField>
<asp:BoundField DataField="datepicker" HeaderText="datepicker" SortExpression="datepicker"></asp:BoundField>
                </Columns>
            </asp:GridView>
<asp:SqlDataSource runat="server" ID="Agon" ConnectionString='<%$ ConnectionStrings:AgonConnectionString %>' SelectCommand="SELECT * FROM [sell_scrap] ORDER BY [cust_id]"></asp:SqlDataSource>
        </div>
   
        
    </form>
     </div>
</body>
</html>

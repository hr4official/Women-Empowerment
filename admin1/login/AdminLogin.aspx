<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMINLOGIN.aspx.cs" Inherits="admin1_ADMINLOGIN" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <table align="center" 
                    style="border: medium solid #000000; width: 100%; font-family: Aharoni; table-layout: auto;">
                    <tr>
                        <td align="center" colspan="2" style="border: medium solid #000000">
                            Admin Login</td>
                    </tr>
                    <tr>
                        <td>
                            Username</td>
                        <td>
                            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 38px">
                            Password</td>
                        <td style="height: 38px">
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server"  Text="Login" 
                                Width="53px" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>--%>







<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Admin login</title>
    
    
    
    
        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body runat="server">
   <div class="wrapper">
	<div class="container">
		<h1>Welcome</h1>
		
		<form class="form" runat="server">
			<%--<input type="text" placeholder="Username">--%>

<asp:TextBox ID="txt_username" runat="server"  placeholder="Username"></asp:TextBox>
			<%--<input type="password" placeholder="Password">--%>

<asp:TextBox ID="txt_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
		<%--	<button type="submit" id="login-button">Login</button>
		--%>

<asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click1" />
	</div>
	</form>
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
 </form>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
   
  </body>
</html>

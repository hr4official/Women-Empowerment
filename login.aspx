<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <br />
    <table class="nav-justified">
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
                <table align="center">
                    <tr>
                        <td align="center" colspan="2" 
                            style="border: medium double #008080; font-family: Aharoni;">
                            Login</td>
                    </tr>
                    <tr>
                        <td>
                            E-MAIL ID</td>
                        <td>
                            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txt_email" ErrorMessage="plz enter the email id"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PASSWORD</td>
                        <td>
                            <asp:TextBox ID="txt_pswd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txt_pswd" ErrorMessage="please enter correct password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btn_login" runat="server" Text="Login" 
                                onclick="btn_login_Click" />
                            <br />
                        <a href="forgetpassword.aspx"><h3>Forgot password ? </h3></a>	
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <a href="WomenRegistration.aspx"><h3>New  on Site ? Register your self</h3></a>
                            &nbsp;</td>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


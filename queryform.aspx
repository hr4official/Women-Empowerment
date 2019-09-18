<%@ Page Title="" Language="C#" MasterPageFile="~/afterloginmasterpage.master" AutoEventWireup="true" CodeFile="queryform.aspx.cs" Inherits="queryform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                        style="border: medium double #008080; font-family: 'Arial Rounded MT Bold';">
                        Ask Query</td>
                </tr>
                <tr>
                    <td>
                        E-mail</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Harrasment</td>
                    <td>
                        <asp:TextBox ID="txt_query" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Problem Type</td>
                    <td>
                        <asp:TextBox ID="txt_problemtype" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                            Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
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


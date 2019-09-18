<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="admin1_userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="EmailID" 
        DataSourceID="SqlDataSource1" RepeatColumns="1">
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="width: 145px">
                        Name</td>
                    <td>
                        <asp:Label ID="FNLabel" runat="server" Text='<%# Eval("FN") %>' />
                        &nbsp;&nbsp;
                        <asp:Label ID="LNLabel" runat="server" Text='<%# Eval("LN") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 145px">
                        Email</td>
                    <td>
                        <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a href="update_profile.aspx?id=<%# Eval("EmailID") %>"><h3>View Detail</h3></a>
                        &nbsp;</td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [WOMENREGISTRATION]"></asp:SqlDataSource>
</asp:Content>


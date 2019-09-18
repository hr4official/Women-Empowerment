<%@ Page Title="" Language="C#" MasterPageFile="~/afterloginmasterpage.master" AutoEventWireup="true" CodeFile="myquery.aspx.cs" Inherits="myquery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                RepeatColumns="2">
                <ItemTemplate>
                    <br />
                    <table align="center" class="nav-justified">
                        <tr>
                            <td>
                                EMAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                REPLY&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:Label ID="REPLYLabel" runat="server" Text='<%# Eval("REPLY") %>' />
                            </td>
                        </tr>
                    </table>
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT * FROM [REPLYMASTER] WHERE ([EMAIL] = @EMAIL)">
                <SelectParameters>
                    <asp:SessionParameter Name="EMAIL" SessionField="unm" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
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


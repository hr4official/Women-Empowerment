<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lawmaster.aspx.cs" Inherits="Lawmaster" %>

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
                <asp:DataList ID="DataList1" runat="server" DataKeyField="law_id" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td>
                                   <p>
                                   <%# Eval("law") %>
                                   </p></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="254px" 
                                        ImageUrl='<%# Eval("img") %>' Width="646px" />
                                </td>
                            </tr>
                        </table>
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [women_law_master]"></asp:SqlDataSource>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="update_profile.aspx.cs" Inherits="admin1_update_profile" %>

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
            <asp:DataList ID="DataList1" runat="server" DataKeyField="EmailID" 
                DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <table align="center" style="width: 100%">
                        <tr>
                            <td style="width: 167px">
                                Name</td>
                            <td>
                                <asp:Label ID="FNLabel" runat="server" Text='<%# Eval("FN") %>' />
                                &nbsp;
                                <asp:Label ID="LNLabel" runat="server" Text='<%# Eval("LN") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px">
                                Contact</td>
                            <td>
                                <asp:Label ID="CNLabel" runat="server" Text='<%# Eval("CN") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px">
                                Address</td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px">
                                Age</td>
                            <td>
                                <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px">
                                MaratialStatus</td>
                            <td>
                                <asp:Label ID="MaratialStatusLabel" runat="server" 
                                    Text='<%# Eval("MaratialStatus") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px">
                                EmailID</td>
                            <td>
                                <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px">
                                Password</td>
                            <td>
                                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                            </td>
                        </tr>
                    </table>
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT * FROM [WOMENREGISTRATION] WHERE ([EmailID] = @EmailID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="EmailID" QueryStringField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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


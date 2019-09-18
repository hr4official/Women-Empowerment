<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="admin1_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="qid" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table align="center" 
                style="border: medium solid #000000; width: 100%; font-family: Arial;">
                <tr>
                    <td>
                        qid</td>
                    <td>
                        <asp:Label ID="qidLabel" runat="server" Text='<%# Eval("qid") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        EMAIL</td>
                    <td>
                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        QUERY</td>
                    <td>
                        <asp:Label ID="QUERYLabel" runat="server" Text='<%# Eval("QUERY") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PROBLEMTYPE</td>
                    <td>
                        <asp:Label ID="PROBLEMTYPELabel" runat="server" 
                            Text='<%# Eval("PROBLEMTYPE") %>' />
                    </td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [QUERYFORM]"></asp:SqlDataSource>
</asp:Content>


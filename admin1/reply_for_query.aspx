<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="reply_for_query.aspx.cs" Inherits="_Default" %>

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
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table class="nav-justified" style="border: thick solid #C0C0C0">
                            <tr>
                                <td bgcolor="Silver">
                                    <span style="font-weight: normal"><strong>Email</strong></span></td>
                                <td bgcolor="Silver">
                                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Query</td>
                                <td>
                                    <asp:Label ID="QUERYLabel" runat="server" Text='<%# Eval("QUERY") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                 <a href="reply_query.aspx?id=<%# Eval("qid") %>">Reply</a></td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [QUERYFORM]">
                </asp:SqlDataSource>
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


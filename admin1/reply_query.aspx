<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="reply_query.aspx.cs" Inherits="reply_query" %>

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
                <asp:DataList ID="DataList1" runat="server" DataKeyField="qid" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <<table class="nav-justified" style="border: thick solid #C0C0C0">
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
                                    Reply</td>
                                <td>
                                    <asp:TextBox ID="txtrply" runat="server" Height="83px" TextMode="MultiLine" 
                                        Width="267px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [QUERYFORM] WHERE ([qid] = @qid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="qid" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
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


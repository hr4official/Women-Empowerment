<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="success_storys.aspx.cs" Inherits="admin1_success_storys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    sid</td>
                                <td>
                                    <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    qid</td>
                                <td>
                                    <asp:Label ID="qidLabel" runat="server" Text='<%# Eval("qid") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    solution</td>
                                <td>
                                    <asp:Label ID="solutionLabel" runat="server" Text='<%# Eval("solution") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    solution_by</td>
                                <td>
                                    <asp:Label ID="solution_byLabel" runat="server" 
                                        Text='<%# Eval("solution_by") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    date_of_solution</td>
                                <td>
                                    <asp:Label ID="date_of_solutionLabel" runat="server" 
                                        Text='<%# Eval("date_of_solution") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    attachment</td>
                                <td>
                                    <asp:Label ID="attachmentLabel" runat="server" 
                                        Text='<%# Eval("attachment") %>' />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [querysolutionAdminside]"></asp:SqlDataSource>
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


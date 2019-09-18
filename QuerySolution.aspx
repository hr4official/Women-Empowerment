<%@ Page Title="" Language="C#" MasterPageFile="~/afterloginmasterpage.master" AutoEventWireup="true" CodeFile="QuerySolution.aspx.cs" Inherits="QuerySolution" %>

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
                RepeatColumns="3">
                <ItemTemplate>
                    <table align="center" style="border: medium solid #000000">
                        <tr>
                            <td>
                                Solution</td>
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
                                Date_Of_Solution</td>
                            <td>
                                <asp:Label ID="date_of_solutionLabel" runat="server" 
                                    Text='<%# Eval("date_of_solution") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Attachment</td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="134px" 
                                    ImageUrl='<%# Eval("attachment") %>' Width="136px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT [solution], [solution_by], [date_of_solution], [attachment] FROM [querysolutionAdminside]">
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


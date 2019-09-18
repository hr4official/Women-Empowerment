<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Querysolution.aspx.cs" Inherits="Querysolution" %>

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
                <table align="center" style="border: medium solid #000000">
                    <tr>
                        <td style="width: 101px">
                            Qid</td>
                        <td style="width: 262px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="PROBLEMTYPE" DataValueField="qid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                SelectCommand="SELECT [qid], [PROBLEMTYPE] FROM [QUERYFORM]">
                            </asp:SqlDataSource>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Search" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 101px">
                            query</td>
                        <td style="width: 262px">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 101px">
                            Solution</td>
                        <td style="width: 262px">
                            <asp:TextBox ID="txt_solution" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 101px">
                            solution By</td>
                        <td style="width: 262px">
                            <asp:TextBox ID="txt_solutionBy" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 101px">
                            Attachment</td>
                        <td style="width: 262px">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="sid" />
                                    <asp:BoundField DataField="solution" HeaderText="solution" 
                                        SortExpression="solution" />
                                    <asp:BoundField DataField="solution_by" HeaderText="solution_by" 
                                        SortExpression="solution_by" />
                                    <asp:BoundField DataField="date_of_solution" HeaderText="date_of_solution" 
                                        SortExpression="date_of_solution" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                DeleteCommand="DELETE FROM querysolutionAdminside WHERE (sid = @sid)" 
                                SelectCommand="SELECT [sid], [solution], [solution_by], [date_of_solution] FROM [querysolutionAdminside]">
                                <DeleteParameters>
                                    <asp:QueryStringParameter Name="sid" QueryStringField="@sid" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </td>
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


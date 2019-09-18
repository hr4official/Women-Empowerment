<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="women_law.aspx.cs" Inherits="admin1_women_law" %>

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
                <table align="center" style="width: 100%">
                    <tr>
                        <td>
                            Law</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Image</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="131px" Width="158px" />
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
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
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="law_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="law_id" HeaderText="law_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="law_id" />
                        <asp:BoundField DataField="law" HeaderText="law" SortExpression="law" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    DeleteCommand="DELETE FROM women_law_master WHERE (law_id = @law_id)" 
                    SelectCommand="SELECT [law_id], [law] FROM [women_law_master]">
                    <DeleteParameters>
                        <asp:QueryStringParameter Name="law_id" QueryStringField="@law_id" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


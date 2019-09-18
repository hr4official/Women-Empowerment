<%@ Page Title="" Language="C#" MasterPageFile="~/afterloginmasterpage.master" AutoEventWireup="true" CodeFile="EducationDetail.aspx.cs" Inherits="EducationDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    ViewStateMode="Enabled" RepeatColumns="3">
                    <ItemTemplate>
<br />
                        <table align="center" class="nav-justified" 
                            style="font-family: 'Times New Roman', Times, serif; border: medium groove #000000">
                            <tr style="border-style: dotted">
                                <td align="center" colspan="2" style="border: medium solid #000000">
                                   <a href="collagedetail.aspx?id=<%# Eval("CLG_ID") %>"> <asp:Image ID="Image1" runat="server" Height="330px" 
                                        ImageUrl='<%# Eval("IMAGE") %>' Width="377px" /></a>
                                </td>
                            </tr>
                            <tr style="border-style: dotted">
                                <td align="center" style="border: medium solid #000000">
                                    &nbsp;CLG_NM&nbsp;&nbsp;</td>
                                <td align="center" 
                                    style="border: medium solid #000000; font-family: 'Agency FB'; font-size: large;">
                                    <asp:Label ID="CLG_NMLabel" runat="server" Text='<%# Eval("CLG_NM") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [CLG_NM], [IMAGE],[CLG_ID] FROM [COLLAGEMASTER]">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


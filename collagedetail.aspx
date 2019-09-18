<%@ Page Title="" Language="C#" MasterPageFile="~/afterloginmasterpage.master" AutoEventWireup="true" CodeFile="collagedetail.aspx.cs" Inherits="collagedetail" %>

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
                <asp:DataList ID="DataList1" runat="server" DataKeyField="CLG_ID" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        &nbsp;<br />
                        <table align="center" 
                            style="padding: inherit; margin: auto; border: medium none #000000; table-layout: auto; border-collapse: separate; empty-cells: hide; font-family: 'Arial Rounded MT Bold';">
                            <tr>
                                <td>
                                    CLG_ID</td>
                                <td style="width: 130px">
                                    <asp:Label ID="CLG_IDLabel" runat="server" Text='<%# Eval("CLG_ID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    CLG_NM</td>
                                <td style="width: 130px">
                                    <asp:Label ID="CLG_NMLabel" runat="server" Text='<%# Eval("CLG_NM") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    STATE</td>
                                <td style="width: 130px">
                                    <asp:Label ID="STATELabel" runat="server" Text='<%# Eval("STATE") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    CITY</td>
                                <td style="width: 130px">
                                    <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    ADDRESS</td>
                                <td style="width: 130px">
                                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Eval("ADDRESS") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    UNIVERCITY</td>
                                <td style="width: 130px">
                                    <asp:Label ID="UNIVERCITYLabel" runat="server" 
                                        Text='<%# Eval("UNIVERCITY") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    STREAM</td>
                                <td style="width: 130px">
                                    <asp:Label ID="STREAMLabel" runat="server" Text='<%# Eval("STREAM") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    IMAGE</td>
                                <td style="width: 130px">
                                    <asp:Image ID="Image1" runat="server" Height="128px" 
                                        ImageUrl='<%# Eval("IMAGE") %>' Width="134px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    NO_OF_SEATS_WOMEN</td>
                                <td style="width: 130px">
                                    <asp:Label ID="NO_OF_SEATS_WOMENLabel" runat="server" 
                                        Text='<%# Eval("NO_OF_SEATS_WOMEN") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    FEES</td>
                                <td style="width: 130px">
                                    <asp:Label ID="FEESLabel" runat="server" Text='<%# Eval("FEES") %>' />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [COLLAGEMASTER] WHERE ([CLG_ID] = @CLG_ID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CLG_ID" QueryStringField="id" Type="Decimal" />
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


<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="COLLAGEMASTER.aspx.cs" Inherits="COLLAGEMASTER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
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
    <table align="center" style="border: thin solid #C0C0C0">
        <tr>
            <td align="center" colspan="2" 
                style="border: medium solid #C0C0C0; font-weight: 700">
                Collage Master</td>
        </tr>
        <tr>
            <td>
                COLLAGE ID</td>
            <td>
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CLG_ID" DataValueField="CLG_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [CLG_ID], [CLG_NM] FROM [COLLAGEMASTER]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                COLLAGE NAME
            </td>
            <td>
                <asp:TextBox ID="txt_clgNM" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                STATE</td>
            <td>
                <asp:TextBox ID="txt_state" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                CITY</td>
            <td>
                <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                ADDRESS</td>
            <td>
                <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                UNIVERCITY</td>
            <td>
                <asp:TextBox ID="txt_univercity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                STREAM</td>
            <td>
                <asp:TextBox ID="txt_stream" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                IMAGE </td>
            <td valign=top>
                <asp:FileUpload ID="Fileupload_img" runat="server" />
                <asp:Image ID="Image1" runat="server" Height="98px" Width="105px" />
            </td>
        </tr>
        <tr>
            <td>
                NO. OF SEATES(WOMEN)</td>
            <td>
                <asp:TextBox ID="txt_nos" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                FEES</td>
            <td>
                <asp:TextBox ID="txt_fees" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btn_reg" runat="server" onclick="btn_reg_Click" 
                    Text="Register" style="height: 26px" />
                <asp:Button ID="btn_update" runat="server" Text="update" 
                    onclick="btn_update_Click" />
                <asp:Button ID="delete" runat="server" Text="Delete" onclick="delete_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;</td>
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
                    AutoGenerateColumns="False" DataKeyNames="CLG_ID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="CLG_ID" HeaderText="CLG_ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="CLG_ID" />
                        <asp:BoundField DataField="CLG_NM" HeaderText="CLG_NM" 
                            SortExpression="CLG_NM" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    DeleteCommand="DELETE FROM COLLAGEMASTER WHERE (CLG_ID = @CLG_ID)" 
                    SelectCommand="SELECT [CLG_ID], [CLG_NM] FROM [COLLAGEMASTER]">
                    <DeleteParameters>
                        <asp:QueryStringParameter Name="CLG_ID" QueryStringField="@CLG_ID" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


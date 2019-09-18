<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WomenRegistration.aspx.cs" Inherits="WomenRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table align="center" class="nav-justified">
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <table align="center">
                    <tr>
                        <td align="center" colspan="2" 
                            style="border: medium double #008080; font-family: Aharoni;">
                            Women Registration</td>
                    </tr>
                    <tr>
                        <td>
                            First Name</td>
                        <td>
                            <asp:TextBox ID="txt_fn" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txt_fn" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last Name</td>
                        <td>
                            <asp:TextBox ID="txt_ln" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txt_ln" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact No.</td>
                        <td>
                            <asp:TextBox ID="txt_cn" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txt_cn" ErrorMessage="Enter Contact No."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address</td>
                        <td>
                            <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txt_address" ErrorMessage="Enter Address Must"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Age</td>
                        <td>
                            <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txt_age" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Maretial Status</td>
                        <td>
                            <asp:DropDownList ID="dd_ms" runat="server">
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>Widow</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="dd_ms" ErrorMessage="Select Your Gender"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email-Id</td>
                        <td>
                            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txt_email" ErrorMessage="plz valid email " 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password</td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txt_password" ErrorMessage="Enter new password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btn_reg" runat="server" Text="Registration" 
                                onclick="btn_reg_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <a href="login.aspx"><h3>Already Have An Account ? Then Click Here</h3></a>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


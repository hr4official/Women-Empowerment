<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="solution_of_query.aspx.cs" Inherits="admin1_solution_of_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            sid:
            <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            qid:
            <asp:Label ID="qidLabel" runat="server" Text='<%# Eval("qid") %>' />
            <br />
            solution:
            <asp:Label ID="solutionLabel" runat="server" Text='<%# Eval("solution") %>' />
            <br />
            solution_by:
            <asp:Label ID="solution_byLabel" runat="server" 
                Text='<%# Eval("solution_by") %>' />
            <br />
            date_of_solution:
            <asp:Label ID="date_of_solutionLabel" runat="server" 
                Text='<%# Eval("date_of_solution") %>' />
            <br />
            attachment:
            <asp:Label ID="attachmentLabel" runat="server" 
                Text='<%# Eval("attachment") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [querysolutionAdminside]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [querysolutionAdminside]"></asp:SqlDataSource>
</asp:Content>


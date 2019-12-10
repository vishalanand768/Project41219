<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project41219.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Email ID :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Password :</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" /></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

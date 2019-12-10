<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="Project41219.Changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Old Password :</td>
            <td>
                <asp:TextBox ID="txtold" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>New Password :</td>
            <td>
                <asp:TextBox ID="txtnew" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnchangepassword" runat="server" Text="Change Password" OnClick="btnchangepassword_Click" /></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

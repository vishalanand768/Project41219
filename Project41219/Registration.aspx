<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project41219.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Name :</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Email ID :</td>
            <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Password :</td>
            <td><asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnsave_Click" /></td>
        </tr>
    </table>
</asp:Content>

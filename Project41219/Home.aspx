<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project41219.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello <asp:Label ID="lblname1" runat="server"></asp:Label></h1>
      <table>
        <tr>
            <td>Name :</td>
            <td><asp:Label ID="lblname" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td>Email ID :</td>
            <td><asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td>Password :</td>
            <td><asp:Label ID="lblpassword" runat="server"></asp:Label></td>
        </tr>

      
    </table>
</asp:Content>

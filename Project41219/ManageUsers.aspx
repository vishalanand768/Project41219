<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Project41219.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <a href="Registration.aspx">Add New</a>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:TemplateField HeaderText="User Name">
                            <ItemTemplate>
                                <%#Eval("name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="User EmailID">
                            <ItemTemplate>
                                <%#Eval("email") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="User Password">
                            <ItemTemplate>
                                <%#Eval("Password") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="A" CommandArgument='<%#Eval("rid") %>' />
                                <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="B" CommandArgument='<%#Eval("rid") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        
                    </Columns>


                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

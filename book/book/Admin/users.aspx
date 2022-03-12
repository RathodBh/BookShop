<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="book.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container mt-3 table-responsive">
    <div class="d-flex justify-content-between align-items-center">
        <h2>All Users</h2>
        <div>
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox> 
            <asp:Button ID="btn_search" runat="server" Text="Search" 
                onclick="btn_search_Click" />
        </div>
    </div>
     <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table ID="user" class="table table-stripped"  >
                                        <thead>         
                                         <tr style="background:green;color:white;">
                                            <th scope="col">Name</th>
                                            <th scope="col">Phone number</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Email</th>
                                         </tr>
                                        <tbody>
                                </HeaderTemplate>


                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("name") %></td>
                                        <td><%#Eval("mno") %></td>
                                        <td><%#Eval("addr") %></td>
                                        <td><%#Eval("email") %></td>
                                </ItemTemplate>


                                <FooterTemplate> 
                                </thead>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
</div>
<link rel="stylesheet" href="//cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css" />
<script src="//cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#user').DataTable();
    });
    </script>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="book.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container mt-3 table-responsive">
    <div class="d-flex justify-content-between align-items-center">
        <h2>Contact us</h2>
        <%--<div>
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox> 
            <asp:Button ID="btn_search" runat="server" Text="Search" 
                onclick="btn_search_Click" />
        </div>--%>
    </div>
     <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table ID="user" class="table table-stripped"  >
                                        <thead>         
                                         <tr style="background:green;color:white;">
                                            <th scope="col">Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Message</th>
                                           
                                         </tr>
                                        <tbody>
                                </HeaderTemplate>


                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("name") %></td>
                                        <td><%#Eval("email") %></td>
                                        <td><%#Eval("phone") %></td>
                                        <td><%#Eval("msg") %></td>
                                       
                                    </tr>
                                   
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


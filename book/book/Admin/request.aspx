<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="book.Admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container mt-3 table-responsive">
    <div class="d-flex justify-content-between align-items-center">
        <h2>Requested Books</h2>
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
                                            <th scope="col">ISBN No.</th>
                                            <th scope="col">Books Image</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Author Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">PDF</th>
                                            <th scope="col">Sell</th>
                                         </tr>
                                        <tbody>
                                </HeaderTemplate>


                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("isbn") %></td>
                                        <td><img src="../img/book.png" style="height:100px;" /></td>
                                        <td><%#Eval("name") %></td>
                                        <td><%#Eval("author") %></td>
                                        <td><%#Eval("price") %></td>
                                        <td><%#checkpdf(Eval("pdf"),Eval("id")) %></td>
                                        <td><a href='sell.aspx?id=<%#Eval("id") %>' class="text-primary">Sell</a></td>
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

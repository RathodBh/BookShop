<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_menu.Master" AutoEventWireup="true" CodeBehind="my_books.aspx.cs" Inherits="book.user.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container mt-3 table-responsive">
     <div class="d-flex justify-content-between align-items-center">
        <h2>My Book</h2>
        <div>
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox> 
            <asp:Button ID="btn_search" runat="server" Text="Search" 
                onclick="btn_search_Click"/>
        </div>
    </div>
     <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-stripped" >
                                        <thead>         
                                         <tr style="background:green;color:white;">
                                            <th scope="col">ISBN No.</th>
                                            <th scope="col">Books Image</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Author Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">PDF</th>
                                            <th scope="col" >Bill</th>
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
                                        <td><a href='bill.aspx?id=<%#Eval("id") %>' class="text-primary">Bill</td>
                                    </tr>
                                   
                                </ItemTemplate>


                                <FooterTemplate> 
                                </thead>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
</div>
</asp:Content>

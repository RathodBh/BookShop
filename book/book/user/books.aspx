<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_menu.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="book.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3 table-responsive">
     <div class="d-flex justify-content-between align-items-center">
        <h2>All Book</h2>
        <div>
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox> 
            <asp:Button ID="btn_search" runat="server" Text="Search" onclick="btn_search_Click" />
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
                                            <th scope="col">Pages</th>
                                            <th scope="col">PDF</th>
                                            <th scope="col">Request</th>
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
                                        <td><%#Eval("pages") %></td>
                                        <td><%#checkpdf(Eval("pdf"),Eval("id")) %></td>
                                        <td><a href='req.aspx?id=<%#Eval("id") %>&isbn=<%#Eval("isbn") %>&name=<%#Eval("name") %>&author=<%#Eval("author") %>&price=<%#Eval("price") %>&pdf=<%#Eval("pdf") %>' class="text-primary">Request</td>
                                    </tr>
                                   
                                </ItemTemplate>


                                <FooterTemplate> 
                                </thead>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
</div>
<%--<div class="container mt-3">
    <div class="row px-3">
        <div class="col-lg-12">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Books</h2>
                <div>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="card p-2" >
            <div class="d-flex justify-content-center">
            <img class="card-img-top" src="../img/book.png" alt="Card image" style="height:auto;width:70%;object-fit:cover;">
            </div>
                
                <div class="card-body">
                  <h4 class="card-title">John Doe</h4>
                  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
             </div>
                
        </div>
        <div class="col-lg-3 ">
            <div class="card p-2">
            <div class="d-flex justify-content-center">
            <img class="card-img-top" src="../img/book.png" alt="Card image" style="height:auto;width:70%;object-fit:cover;">
            </div>
                
                <div class="card-body">
                  <h4 class="card-title">John Doe</h4>
                  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
             </div>
                
        </div>
        <div class="col-lg-3">
            <div class="card p-2" >
            <div class="d-flex justify-content-center">
            <img class="card-img-top" src="../img/book.png" alt="Card image" style="height:auto;width:70%;object-fit:cover;">
            </div>
                
                <div class="card-body">
                  <h4 class="card-title">John Doe</h4>
                  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
             </div>
                
        </div>
        <div class="col-lg-3 ">
            <div class="card p-2">
            <div class="d-flex justify-content-center">
            <img class="card-img-top" src="../img/book.png" alt="Card image" style="height:auto;width:70%;object-fit:cover;">
            </div>
                
                <div class="card-body">
                  <h4 class="card-title">John Doe</h4>
                  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
             </div>
                
        </div>
    </div>
</div>--%>
</asp:Content>

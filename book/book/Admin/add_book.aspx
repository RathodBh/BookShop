<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="add_book.aspx.cs" Inherits="book.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container mt-3">
    <h2>Add Book</h2>
    <form class="">
        <div class="form-group">
            <label for="name">Name</label>
            <asp:TextBox ID="name" class="form-control"  placeholder="Enter name" runat="server" required></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="isbn">ISBN number</label>
             <asp:TextBox ID="isbn" class="form-control" placeholder="Enter ISBN number" runat="server" required></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="author">Author Name</label>
             <asp:TextBox ID="author" runat="server" class="form-control" placeholder="Enter author name" required></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="price">Price</label>
             <asp:TextBox ID="price" runat="server"  class="form-control" placeholder="Enter price" required></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="pages">Pages</label>
             <asp:TextBox ID="pages" runat="server" class="form-control" placeholder="Enter pages" required></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="pdf" class="control-label mb-1">upload PDF</label>
            <asp:FileUpload ID="fu_pdf" runat="server" class="form-control" />
         </div>
        <asp:Button ID="submit" runat="server" Text="SUBMIT" 
            class="btn btn-primary btn-block mt-2" onclick="submit_Click"  />
     </form>
</div>
</asp:Content>

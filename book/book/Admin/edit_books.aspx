<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="edit_books.aspx.cs" Inherits="book.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
    <h2>Edit Book</h2>
    <form class="">
        <div class="form-group">
            <label for="name">Name (old: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>)</label>
            <asp:TextBox ID="name" class="form-control"  placeholder="Enter name" runat="server" ></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="isbn">ISBN number (old: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>)</label>
             <asp:TextBox ID="isbn" class="form-control" placeholder="Enter ISBN number" runat="server" ></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="author">Author Name (old: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>)</label>
             <asp:TextBox ID="author" runat="server" class="form-control" placeholder="Enter author name" ></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="price">Price (old: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>)</label>
             <asp:TextBox ID="price" runat="server"  class="form-control" placeholder="Enter price" ></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="pages">Pages (old: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>)</label>
             <asp:TextBox ID="pages" runat="server" class="form-control" placeholder="Enter pages" ></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="pdf" class="control-label mb-1">upload PDF (old: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>)</label>
            <asp:FileUpload ID="fu_pdf" runat="server" class="form-control" />
         </div>
        <asp:Button ID="submit" runat="server" Text="UPDATE" 
            class="btn btn-primary btn-block mt-2" onclick="submit_Click"  />
     </form>
</div>
</asp:Content>

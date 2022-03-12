<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="sell.aspx.cs" Inherits="book.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<div class="container mt-3">
    <h2>Sell Book</h2>
    <form class="">
        <div class="form-group">
            <label for="name">Name</label>
            <asp:TextBox ID="name" class="form-control"  placeholder="Enter name" runat="server" readonly></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="isbn">ISBN number</label>
             <asp:TextBox ID="isbn" class="form-control" placeholder="Enter ISBN number" runat="server" readonly></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="author">Author Name</label>
             <asp:TextBox ID="author" runat="server" class="form-control" placeholder="Enter author name" readonly></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="price">Price</label>
             <asp:TextBox ID="price" runat="server"  class="form-control" placeholder="Enter price" readonly></asp:TextBox>
         </div>
         <div class="form-group">
            <label for="pages">Pages</label>
             <asp:TextBox ID="pages" runat="server" class="form-control" placeholder="Enter pages" readonly></asp:TextBox>
         </div>
         <div class="form-group">
            <label>Select User email</label>
             <asp:DropDownList ID="user_list" runat="server" class="form-control" 
                
                 DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="email">
                
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:Conn %>" 
                 SelectCommand="SELECT DISTINCT [email] FROM [cust_info]">
             </asp:SqlDataSource>
         </div>
        <asp:Button ID="submit" runat="server" Text="SUBMIT" 
            class="btn btn-primary btn-block mt-2" onclick="submit_Click"   />
     </form>
</div>--%>
</asp:Content>
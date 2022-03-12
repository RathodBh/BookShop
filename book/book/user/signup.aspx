<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="book.user.signup" %>

<!DOCTYPE html> <!-- Created By CodingNepal -->
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>User login</title>
    <link rel="stylesheet" href="../css/login.css">
</head>

<body>
    <div class="wrapper">
        <div class="title"> User Sign up</div>
           <form id="form1" runat="server">
           <div class="field"> 
                <asp:TextBox ID="name" type="text" placeholder="Name" runat="server" required></asp:TextBox>
            </div>
            <div class="field"> 
                <asp:TextBox ID="mobile" type="text" placeholder="Mobile number" runat="server" required></asp:TextBox>
            </div>
            <div class="field"> 
                <asp:TextBox ID="email" type="email" placeholder="Email" runat="server" required></asp:TextBox>
            </div>
            <div class="field"> 
                <asp:TextBox type="password" ID="password" runat="server" placeholder="Password" required></asp:TextBox>
             </div>
             <div class="field"> 
                <asp:TextBox ID="addr" type="text" placeholder="Address" runat="server" required></asp:TextBox>
            </div>
            <div class="field">
                <asp:Button ID="Button1" type="submit" runat="server" Text="Sign Up" 
                    onclick="Button1_Click" />
             
             </div>
            <div class="signup-link"> already member? <a href="user_login.aspx">Login now</a> </div>
        </form>
    </div>
</body>

</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="book.user.user_login" %>

<!DOCTYPE html> <!-- Created By CodingNepal -->
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>User login</title>
    <link rel="stylesheet" href="../css/login.css">
</head>

<body>
    <div class="wrapper">
        <div class="title"> User Login</div>
           <form id="form1" runat="server">
            <div class="field"> 
                <asp:TextBox ID="email" placeholder="Email" runat="server" required></asp:TextBox>
              
            </div>
            <div class="field"> 
                <asp:TextBox type="password" ID="password" runat="server" placeholder="Password" required></asp:TextBox>
             </div>
            <div class="content">
                
                <%--<div class="pass-link"> <a href="#">Forgot password?</a> </div>--%>
            </div>
            <div class="field">
                <asp:Button ID="Button1" type="submit" runat="server" Text="Login" 
                    onclick="Button1_Click1" />
             
             </div>
            <div class="signup-link"> Not a member? <a href="signup.aspx">Signup now</a> </div>
        </form>
    </div>
</body>

</html>
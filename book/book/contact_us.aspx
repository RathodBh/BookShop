<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="book.contact_us" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact us</title>
	<link rel="stylesheet" type="text/css" href="css/contact.css">
	<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
</head>
<body>
	<div class="container">
		<div class="contact-box">
			<div class="left"></div>
			<div class="right">
				<h2>Contact Us</h2>
                <form id="form1" runat="server">
                    <asp:TextBox ID="name" class="field" placeholder="Your Name" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="email" class="field" placeholder="Your Email" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="mobile" class="field" placeholder="Phone" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="msg" runat="server" placeholder="Message" class="field" 
                        TextMode="MultiLine" style="resize:none;"></asp:TextBox>
                    <asp:Button ID="Button1" class="btn" runat="server" Text="Send" 
                        onclick="Button1_Click" />
                </form>
			</div>
		</div>
	</div>
</body>
</html>

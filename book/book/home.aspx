<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="book.home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive menu</title>
    <link rel="stylesheet" href="css/style.css">
    <%--<link rel="stylesheet" href="../fontAwesome/font-awesome.min.css">--%>
</head>
<body>
    <nav>  
      
        <h1>BOOK<span>SHOP</span></h1>
        <div class="bars">
            <i class="fa fa-tasks fa-2x"></i>
            <i class="fa fa-window-close fa-2x"></i>
        </div>
        <ul>
            <li><a href="#" class="active">Home</a></li>
            <li><a href="user/user_login.aspx">User Login</a></li>
            <li><a href="admin/admin_login.aspx">Admin Login</a></li>
            <li><a href="about.aspx">About Us</a></li>
            <li><a href="contact_us.aspx">Contact Us</a></li>
        </ul>  
        
    </nav>

    <div class="container">
        <h2>ONLINE BOOK SHOP</h2>
    </div>

    <script>

        //variables
        ul =  document.querySelector('ul');
        tasks = document.querySelector('.fa-tasks');
        closeBtn = document.querySelector('.fa-window-close');
        nav = document.querySelector('nav');

        //hide close button
        closeBtn.style.display = "none";

        //events
        tasks.addEventListener('click',() => {
            nav.classList.toggle('show');

            closeBtn.style.display = "flex";
            tasks.style.display = "none";

        });
        closeBtn.addEventListener('click', () => {
                nav.classList.toggle('show');

                closeBtn.style.display = "none";
                tasks.style.display = "flex";

            });
    </script>
</body>
</html>

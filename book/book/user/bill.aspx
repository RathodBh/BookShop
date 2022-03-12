<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_menu.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="book.user.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .bill_hold
        {
            width: 100%;
            display: grid;
            place-items: center;
            padding: 30px;
        }
        .bill
        {
            width: 70%;
            padding: 20px;
        }
        table tr th, table tr td
        {
            padding: 15px;
        }
    </style>
    <div class="bill_hold">
        <div class="bill">
            <h2 class="text-center text-primary">ONLINE BOOK SHOP</h2>
            <br /><br />
            <div id="Div2" runat="server">
  <table id="Table2" width="100%" >
  
    <asp:Repeater runat="server" ID="r2">
    
    
       
            <ItemTemplate>
            <tr>
                <th colspan="2"> 
                <div style="display: flex; flex-direction:row ; justify-content: space-between;">
                    <div>
                    Bill no.: <span class="text-primary"><%#Eval("id") %></span> 
                    </div>
                    <div>
                        Date: <%#Eval("dt") %>
                    </div>
                </div>
                </th>
             </tr>
             <tr>
                <th colspan=2 style="color: white;background:green;"><center><h3>BILL</h3></center></th>
            </tr>
            <tr>
                <th>ISBN Number</th>
                <td><%#Eval("isbn") %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%#Eval("name") %></td>
            </tr>
           
            <tr>
                <th>Your Email</th>
                <td><%#Eval("email") %></td>
            </tr>
           
            <tr>
                <th>&nbsp;
                </th>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <th class="text-primary">Total Price</th>
                <th class="text-primary"><%#Eval("price") %></th>
            </tr>
            </ItemTemplate>
            
    </asp:Repeater>

     </table>
        <center><h4>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4></center>
</div>
        </div>
    </div>
</asp:Content>

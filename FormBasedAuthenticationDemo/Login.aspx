<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormBasedAuthenticationDemo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">

       <div class="container">
            <div class="jumbotron">
                <h1><small>Login Credentials</small></h1>
            </div>
           <table>
               <tr>
                   <td><b>Username : </b></td>
                   <td><asp:TextBox CssClass="form-control" runat="server" ID="UsernameText"></asp:TextBox></td>
               </tr>
               <tr>
                   <td><b>Password : </b></td>
                   <td><asp:TextBox CssClass="form-control" runat="server" ID="PasswordText" TextMode="Password">
                       </asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td></td>
                   <td><asp:Button runat="server" CssClass="btn btn-primary" ID="LoginButton" Text="login" OnClick="LoginButton_Click"/></td>
               </tr>
           </table>
       </div>
    </form>
</body>
</html>

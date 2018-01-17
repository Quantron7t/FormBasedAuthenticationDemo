<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FormBasedAuthenticationDemo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1><small>Register here</small></h1>
            </div>
            <div class="col-md-4 form-group">
                <label><b>Enter Username : </b></label> 
                <asp:TextBox runat="server" CssClass="form-control" ID="UsernameText"></asp:TextBox>
            </div>
            <div class="col-md-4 form-group">
                <label><b>Enter Password : </b></label> 
                <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordText"></asp:TextBox>
            </div>
            <div class="col-md-4 form-group">
                <label><b>Re - Enter Password : </b></label> 
                <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="RePasswordText"></asp:TextBox>
            </div>
            <div class="col-md-4 form-group">
                <label><b>Enter Email ID : </b></label> 
                <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailText"></asp:TextBox>
            </div>
            <div class="col-md-4 form-group">
                <asp:Button runat="server" CssClass="btn btn-primary" ID="RegisterButton" Text="Register" OnClick="RegisterButton_Click" />
            </div>
        </div>
    </form>
</body>
</html>

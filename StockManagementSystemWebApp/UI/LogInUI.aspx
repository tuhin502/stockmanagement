<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.LogInUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> login Form</title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
         <div class="container">
         <div class="row">
            <h1 class="jumbotron text-center" style="background-color:darkcyan">Welcome to Stock Management System!</h1>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color: springgreen">
                        <h2>LOGIN FORM</h2>
                    </div>
                    <div class="panel-body">
         <div class="col-md-10 margin-bottom">
                            
         <div class="form-group">
             <asp:Label ID="Label1" runat="server" Text="USER-ID"></asp:Label>
             <div>
             <asp:TextBox ID="userIdTextBox" runat="server" placeholder="Enter User Id" CssClass="form-control margin-bottom"></asp:TextBox>
             </div>
         </div>                   
        
       
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <div>
            <asp:TextBox ID="passwordTextBox" runat="server" placeholder="Enter password" CssClass="form-control margin-bottom"></asp:TextBox>
            </div>
        </div>

        <div>
        <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" CssClass="btn-warning"/>
        </div>
            
              <div>
                 <asp:Label ID="outputLabel" runat="server"></asp:Label>
             </div>
        

                            </div>
                            </div>
                    </div>
                </div>
             </div>
             </div>

    </form>
</body>
</html>
 
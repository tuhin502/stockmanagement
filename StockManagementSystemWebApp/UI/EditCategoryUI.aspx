<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCategoryUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.EditCategoryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Edit</title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        
       <div class="container">
            <div class="row">
            <h1 class="jumbotron text-center" style="background-color:darkcyan">Stock Management Sysem</h1>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color:brown">
                        <h2>Update</h2>
                    </div>
                    <div class="panel-body">
                        
                     <div class="col-md-10 margin-bottom">
                         
                         <div class="form-group">
                             <asp:Label ID="Label1" runat="server" Text="Name" CssClass="col-md-4 control-label"></asp:Label>
                             <asp:HiddenField ID="idHiddenField" runat="server" />
                             <div class="cl-md-8">
                             <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control margin-bottom"></asp:TextBox>
                             </div>
                         </div>
                         
                         <div>
                             <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="updateButton_Click" CssClass="btn-danger" />
                         </div>
                        
                         <div>
                              <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
                         </div>
                     </div>   
                        
                        

                        </div>
                    </div>
                </div>
                </div>
           </div>
        
        
        <div class="panel-footer">
             
                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Home
                                </a>                                    
                            </div>                      
                             </div>            
                    </div> 
                
        
        
    </form>
</body>
</html>

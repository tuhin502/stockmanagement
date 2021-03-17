<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemSetupUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.ItemSetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Item Setup</title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
        <div class="container">
            <div class="row">
            <h1 class="jumbotron text-center" style="background-color: darkcyan">Stock Management Sysem</h1>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color: darkgreen">
                        <h2>Item Setup</h2>
                    </div>
                    <div class="panel-body">
        
        <div class="col-md-10 margin-bottom">
       <div class="form-group">
           <asp:Label ID="Label1" runat="server" Text="Category"  CssClass="col-md-4 control-label"></asp:Label>
           <div>
           <asp:DropDownList ID="categoryDropDownList" runat="server" CssClass="form-control margin-bottom" ></asp:DropDownList>
           </div>
       </div>
            
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Company"  CssClass="col-md-4 control-label"></asp:Label>
                <div>
                <asp:DropDownList ID="companyDropDownList" runat="server"  CssClass="form-control margin-bottom"  ></asp:DropDownList>
                </div>
            </div>
                
           <div class="form-group">
               <asp:Label ID="Label3" runat="server" Text="Item Name"> </asp:Label>
               <div>
               <asp:TextBox ID="itemTextBox" runat="server" Width="174px" CssClass="form-control margin-bottom"></asp:TextBox>
               </div>
           </div>
          <div class="form-group">
             <asp:Label ID="Label4" runat="server" Text="Reorder Level"></asp:Label>
              <div>
                  <asp:TextBox ID="reorderLabelTextBox" runat="server" Width="174px" CssClass="form-control margin-bottom"></asp:TextBox>
              </div>
          </div>
         
            <div>
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" CssClass="btn-danger"/>
            </div>
          <div>
               <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
          </div>
               
    </div>
      </div>
                </div>
                </div>
            </div>

        </div>     <br/>     <br/>  <br/>  <br/>  <br/>      


<div class="panel-footer">
             
                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Index
                                </a>
                                <a href="StockInUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right"></i>Stock In
                                </a>
                                <a href="StockOutUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right"></i>Stock Out
                                </a>
                            </div>
                       
                             </div>
             
                    </div>

    </form>
</body>
</html>

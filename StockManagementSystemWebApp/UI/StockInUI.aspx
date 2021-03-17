<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.StockInUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Stock In</title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div class="container">
        <h1 class="jumbotron Text-center" style="background-color: darkcyan">Stock Management Sysem</h1>
         <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color: darkgreen">
                        <h2>Stock In</h2>
                    </div>
        <div class="panel-body">
        <div class="col-md-10 margin-bottom">
              <asp:HiddenField ID="idsHiddenField" Value='<%#Eval("Id") %>' runat="server" />
                  <div class="form-group"> <asp:Label ID="Label1" runat="server" Text="Company"  CssClass="col-md-4 control-label"></asp:Label></div>
                  <div class="cl-md-8"> <asp:DropDownList ID="companyDropDownList" runat="server" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged" AutoPostBack="true"  CssClass="form-control margin-bottom" ></asp:DropDownList></div>
             
                <div class="form-group"> <asp:Label ID="Label2" runat="server" Text="Item"  CssClass="col-md-4 control-label"></asp:Label></div>
                <div class="cl-md-8"> <asp:DropDownList ID="itemDropDownList" runat="server" OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control margin-bottom" ></asp:DropDownList></div>
              
                <div> <asp:Label ID="Label4" runat="server" Text="Reorder Level"  ></asp:Label>
                <div>
                <asp:TextBox ID="reorderLabelTextBox" runat="server" ReadOnly="True" CssClass="form-control margin-bottom"></asp:TextBox>
                </div>
                </div>
                    

                <div>
                <asp:Label ID="Label3" runat="server" Text="Available Quantity"  ></asp:Label>
                <div>
                <asp:TextBox ID="avilableQuantityTextBox" runat="server" ReadOnly="True" CssClass="form-control margin-bottom"></asp:TextBox>
                </div>
                </div>
            
                <div><asp:Label ID="Label5" runat="server" Text="Stock In Quantity"  ></asp:Label>
                <div>
                <asp:TextBox ID="stockInQuantityTextBox" runat="server" CssClass="form-control margin-bottom"></asp:TextBox>
                </div>
                </div>
                
                <div class="cl-md-8">
                     <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" CssClass="form-control margin-bottom btn-danger "/>
                </div>
            
            <div class="cl-md-8"><asp:Label ID="outputLabel" runat="server" Text="" ></asp:Label></div>
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
                                <a href="StockOutUI.aspx" class="btn btn-info btn-danger">
                                    <i class="fa fa-arrow-circle-o-right"></i> Stock Out
                                </a>
                            </div>
                       
                             </div>
             
                    </div>
        
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.HomeUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <h1 class="jumbotron text-center"style="background-color:darkturquoise">Stock Management Sysem</h1>
            <div class="col-md-12 ">
                <div class="panel panel-default">
                    <div class="panel-heading"style="background-color: green">
                        <h2>Home</h2>
                    </div>
           <div class="panel-body">
 
           <div class="container-fluid">
               
          
         <asp:HyperLink ID="categoryLinkButton" runat="server" NavigateUrl="~/UI/CategoryUI.aspx"  Class="btn btn-success">Category Setup</asp:HyperLink><br /> 
         <br />
         <asp:HyperLink ID="companyLinkButton" runat="server" NavigateUrl="~/UI/CompanyUI.aspx" Class="btn btn-success">Company Setup</asp:HyperLink><br/>
         <br />
         <asp:HyperLink ID="itemSetupLinkButton" runat="server" NavigateUrl="~/UI/ItemSetupUI.aspx" Class="btn btn-success">Item Setup</asp:HyperLink><br/>
         <br />
         <asp:HyperLink ID="stockInLinkButton" runat="server" NavigateUrl="~/UI/StockInUI.aspx" Class="btn btn-success" >Stock In</asp:HyperLink><br />
         <br />
         <asp:HyperLink ID="StockOutLinkButton" runat="server" NavigateUrl="StockOutUI.aspx" Class="btn btn-success">Stock Out</asp:HyperLink><br/>
         <br/>
         <asp:HyperLink ID="searchViewLinkButton" runat="server" NavigateUrl="SearchViewItemUI.aspx" Class="btn btn-success">Search View</asp:HyperLink><br/>
         <br/>
         <asp:HyperLink ID="viewSalesLinkButton" runat="server" NavigateUrl="ViewSalesUI.aspx" Class="btn btn-success">View Sales</asp:HyperLink>
         
               
               
               
               
               

             
           </div>
              </div> 
                 </div>
                    </div>
         </div>
                       
                         
               
               
               
              
                         
    </form>
</body>
</html>

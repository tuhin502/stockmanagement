<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchViewItemUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.SearchViewItemUI" %>

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
            <h1 class="jumbotron text-center" style="background-color:darkcyan">Stock Management Sysem</h1>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>Search View</h2>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-10 margin-bottom">
                            
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Category" CssClass="col-md-4 control-label"></asp:Label>
                                <div class="cl-md-8">
                                     <asp:DropDownList ID="categoryDropDownList" runat="server"  CssClass="form-control margin-bottom"></asp:DropDownList>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Company" CssClass="col-md-4 control-label"></asp:Label>
                                <div class="cl-md-8">
                                    <asp:DropDownList ID="companyDropDownList" runat="server"  CssClass="form-control margin-bottom"> </asp:DropDownList>
                                </div>
                            </div>
                            
                            <div class="cl-md-8"> <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" CssClass="form-control margin-bottom btn-danger "/></div>
                        </div>
        
                        
                        <div class="margin-left:auto; margin-right:auto;">
         <asp:GridView ID="searchViewItemGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="none" BorderWidth="1px" CellPadding="4" GridLines="Horizontal">
             <Columns>
                 <asp:TemplateField HeaderText="SL">
                    <ItemTemplate >
                        <asp:Label  runat="server" Text='<%#Eval("Id") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Item">
                    <ItemTemplate >
                        <asp:Label  runat="server" Text='<%#Eval("Name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Company">
                    <ItemTemplate >
                        <asp:Label  runat="server" Text='<%#Eval("CompanyName") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate >
                        <asp:Label  runat="server" Text='<%#Eval("AvailableQuantity") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Reorder Label">
                    <ItemTemplate >
                        <asp:Label  runat="server" Text='<%#Eval("ReorderLevel") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
             <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
             <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
             <RowStyle BackColor="White" ForeColor="#003399" />
             <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <SortedAscendingCellStyle BackColor="#EDF6F6" />
             <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
             <SortedDescendingCellStyle BackColor="#D6DFDF" />
             <SortedDescendingHeaderStyle BackColor="#002876" />
         </asp:GridView>
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
                                <a href="ViewSalesUI.aspx" class="btn btn-info btn-danger">
                                    <i class="fa fa-arrow-circle-left"></i> View Sales Date
                                </a>
                            </div>
                        </div>
              </div>
    </form>     
</body>
</html>

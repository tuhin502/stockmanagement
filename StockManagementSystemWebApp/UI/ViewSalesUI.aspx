<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.ViewSalesUI" %>

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
         <div class="row">
            <h1 class="jumbotron text-center" style="background-color:darkcyan">Stock Management Sysem</h1>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>Search View</h2>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-10 margin-bottom">
                  
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="From Date"></asp:Label>
                    <div>
                    <asp:Calendar ID="fromDatePicker" runat="server" Visible="false" OnSelectionChanged="fromDatePicker_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="fromDateTextBox" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="getFromDateLinkButton" runat="server" OnClick="getFromDateLinkButton_Click">Get From Date</asp:LinkButton>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label>
                    <div>
                    <asp:Calendar ID="toDatePicker" runat="server" Visible="false" OnSelectionChanged="toDatePicker_SelectionChanged" ></asp:Calendar>
                    <asp:TextBox ID="toDateTextBox" runat="server" ></asp:TextBox>
                    <asp:LinkButton ID="getToDateLinkButton" runat="server" OnClick="getToDateLinkButton_Click">Get To Date</asp:LinkButton>
                    </div>
                </div>

                 <div>
                 <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" Class="btn-danger"/> 
                 </div>

                 <div>
                 <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
                 </div>

                     <div>
                     <asp:GridView ID="searchGridView" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                         <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                         <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                         <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#594B9C" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#33276A" />
                         </asp:GridView> 
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


 
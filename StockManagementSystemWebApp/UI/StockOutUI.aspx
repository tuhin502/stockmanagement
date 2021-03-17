<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.StockOutUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Stockout</title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
</head>
<body>
     <form id="form1" runat="server">

        <div class="container">
            <h2 class="jumbotron Text-center" style="background-color: darkcyan">Stock Management Sysem</h2>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading  " style="background-color: green">
                        <h3>Stock Out</h3>
                    </div>
                    <div class="panel-body">
          <div class="col-md-10 margin-bottom">
                                    
                <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Company" CssClass="col-md-4 control-label"></asp:Label>
                </div>
                <div class="cl-md-8">
                <asp:DropDownList ID="companyDropDownList" runat="server" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged"  AutoPostBack="true" CssClass="form-control margin-bottom" ></asp:DropDownList>
                </div>            
                 
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Item"  CssClass="col-md-4 control-label"></asp:Label>
                    </div>   
                    <div class="cl-md-8">
                    <asp:DropDownList ID="itemDropDownList" runat="server" OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control margin-bottom"></asp:DropDownList>
                </div>
                
                         
                 <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Reorder Label" ></asp:Label>
                    <div class="cl-md-8">
                    <asp:TextBox ID="reorderLabelTextBox" runat="server" CssClass="form-control margin-bottom"></asp:TextBox>
                    </div>
                 </div>
                            
                  <div>
                     <asp:Label ID="Label4" runat="server" Text="Available Quantity"></asp:Label>
                     <div> <asp:TextBox ID="availableQuantityTextBox" runat="server"  CssClass="form-control margin-bottom"></asp:TextBox> </div>
                     </div>
                   
                  <div>
                      <asp:Label ID="Label5" runat="server" Text="Stock Out Quantity"></asp:Label>
                      <div> <asp:TextBox ID="stockOutQuantityTextBox" runat="server" CssClass="form-control margin-bottom"></asp:TextBox> </div>
                      </div> 
                   
                   
                  <div class="cl-md-8">  <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" CssClass="form-control margin-bottom btn-danger " /> </div>
              <div class="form-group ">
                   <asp:Button ID="sellButton" runat="server" Text="Sell"  Font-Bold="True" OnClick="sellButton_Click" Class=" btn-success"/>
                  <asp:Button ID="damageButton" runat="server" Text="Damage" Font-Bold="True" OnClick="damageButton_Click" class=" btn-danger"/>
                  <asp:Button ID="lostButton" runat="server" Text="Lost"  Font-Bold="True" OnClick="lostButton_Click" class="btn-primary" />
                              
              </div> 
                      
                  <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>    

         </div> <!-- GTRID VIEW HERE LOAD -->
                        <br/>
        <asp:GridView ID="stockOutGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Vertical" Height="163px" Width="348px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:TemplateField>
                 <HeaderTemplate>
                     SL
                 </HeaderTemplate> 
               <ItemTemplate>
                   <asp:Label ID="LabelSerial" runat="server" Text='<%#Container.DataItemIndex+1 %>'>'</asp:Label>
               </ItemTemplate>
                </asp:TemplateField>   

              <asp:TemplateField HeaderText="Item">
            <ItemTemplate>
                 <asp:Label  runat="server" Text='<%#Eval("ItemName")%>'></asp:Label>
            </ItemTemplate>
             </asp:TemplateField>
                 <asp:TemplateField HeaderText="Company">
            <ItemTemplate>
                 <asp:Label  runat="server" Text='<%#Eval("CompanyName")%>'></asp:Label>
            </ItemTemplate>
             </asp:TemplateField>
                 <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                 <asp:Label  runat="server" Text='<%#Eval("Quantity")%>'></asp:Label>
            </ItemTemplate>
             </asp:TemplateField>
               </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView><br />
             </div>
                  </div>
                    </div>
                      </div>

                    
        <!-- PANEL BODY END-->
              <div class="panel-footer">


                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Home
                                </a>
                                <a href="SearchViewItemUI.aspx" class="btn btn-info btn-danger">
                                    <i class="fa fa-arrow-circle-left"></i> Search View Item
                                </a>
                            </div>
                        </div>
              </div>
    </form>
</body>
</html>

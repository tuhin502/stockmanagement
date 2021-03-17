<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.CompanySetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Setup</title>
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
                        <h2>Company Setup</h2>
                    </div>
                    <div class="panel-body">
        
        <div class="col-md-10 margin-bottom">
            
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Name"  CssClass="col-md-4 control-label"></asp:Label>
            <div>
            <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control margin-bottom" ></asp:TextBox>
            </div>
        </div>
            
            <div class="cl-md-8">
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" CssClass="btn-danger" />
            </div>
            
            <div>
                <asp:Label ID="outputLabel" runat="server"></asp:Label>
            </div>
        </div>
              <div>
           <asp:GridView ID="companySetupGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Horizontal">
               <RowStyle HorizontalAlign="Center" />
               <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Sl">
                    <ItemTemplate>
                        <asp:Label  runat="server" Text='<%#Eval("Sl") %>'>'></asp:Label>
                        <asp:HiddenField ID="idHiddenField" runat="server" value='<%#Eval("Id") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label  runat="server" Text='<%#Eval("Name") %>'>'></asp:Label>
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
        </asp:GridView>
            </div>
            
</div>
    </div>
      </div>
           </div>
            </div>

         <br/><br/>  <br/>  
       
        <div class="panel-footer">
             
                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Home
                                </a>    
                                 <a href="ItemSetupUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right"></i>Item Setup
                                 </a>
                                <a href="StockInUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right"></i>Stock In
                                </a>
                                <a href="SearchViewItemUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right"></i>Search Views
                                </a>
                                
                            </div>                      
                             </div>            
                    </div> 
       </form>  
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.CategoryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category Setup</title>
    <link href="../style/css/bootstrap.css" rel="stylesheet" />
    <script src="../style/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
         <div class="container">
             <div class="row">
            <h1 class="jumbotron text-center" style="background-color: dodgerblue"> Stock Management Sysem</h1>   
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color: brown">
                        <h2>Category Setup</h2>
                    </div>
                    <div class="panel-body" style="border-color: black">

    <div class="col-md-10 margin-bottom">
        
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="col-md-4 control-label"></asp:Label>
            <div class="cl-md-8">
            <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control margin-bottom"></asp:TextBox>
            </div>
        </div>
                    
               <div class="cl-md-8">
                 <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" CssClass="btn-warning"/>  
               </div>

               <div><asp:Label ID="outputLabel" runat="server" Text=""></asp:Label></div>
      
        </div>
        
         <div>            
        <asp:GridView ID="categoryGridView" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Horizontal">
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

                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:LinkButton ID="editLinkButton" runat="server" onclick ="editButton_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="deleteLinkButton" runat="server" OnClick="deleteLinkButton_Click">Delete</asp:LinkButton>
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
     <div class="panel-footer">
             
                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Home
                                </a>    
                                <a href="CompanyUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right">       </i>Company Setup
                                </a>
                                 <a href="ItemSetupUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right">    </i>Item Setup
                                 </a>
                                <a href="StockInUI.aspx" class="btn btn-success">
                                    <i class="fa fa-arrow-circle-o-right">     </i>Stock In
                                </a>
                            </div>                       
                            </div>             
                    </div>
             </form>
</body>
</html>

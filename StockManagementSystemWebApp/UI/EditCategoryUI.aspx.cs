using StockManagementSystemWebApp.BLL;
using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagementSystemWebApp.UI
{
    public partial class EditCategoryUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]);
                Category category = categoryManager.GetCategoryById(id);
                if (category != null)
                {
                    idHiddenField.Value = category.Id.ToString();
                    nameTextBox.Text = category.Name;
                }
            }
            
            
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            Category category = new Category();
            if(nameTextBox.Text == "")
            {
                outputLabel.Text = "Please Enter a Category Name";
            }
            else
            {
                category.Id = Convert.ToInt32(idHiddenField.Value);
                category.Name = nameTextBox.Text;
                outputLabel.Text = categoryManager.UpdateById(category);
            }
            
        }
    }
}
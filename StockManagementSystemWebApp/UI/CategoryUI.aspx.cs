using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using StockManagementSystemWebApp.DAL.Models;
using StockManagementSystemWebApp.BLL;

namespace StockManagementSystemWebApp.UI
{
    public partial class CategoryUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryGridView.DataSource = categoryManager.GetAllCategory();
            categoryGridView.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Category aCategory = new Category();
            aCategory.Name = nameTextBox.Text;
            outputLabel.Text = categoryManager.Save(aCategory);
            categoryGridView.DataSource = categoryManager.GetAllCategory();
            categoryGridView.DataBind();
            nameTextBox.Text = "";           

        }

        
        protected void editButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            DataControlFieldCell cell = (DataControlFieldCell) linkButton.Parent;
            GridViewRow row = (GridViewRow)cell.Parent;
            HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            //Response.Write(idHiddenField.Value);
            int id = Convert.ToInt32(idHiddenField.Value);
            Response.Redirect("EditCategoryUI.aspx?ID="+id);


        }

        protected void deleteLinkButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            DataControlFieldCell cell = (DataControlFieldCell)linkButton.Parent;
            GridViewRow row = (GridViewRow)cell.Parent;
            HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            //Response.Write(idHiddenField.Value);
            int id = Convert.ToInt32(idHiddenField.Value);
            string message = categoryManager.DeleteById(id);
            categoryGridView.DataSource = categoryManager.GetAllCategory();
            categoryGridView.DataBind();
            outputLabel.Text = message;
        }
    }
}
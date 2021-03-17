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
    public partial class ItemSetupUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        CompanyManager companyManager = new CompanyManager();
        ItemManager itemManager = new ItemManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                categoryDropDownList.DataSource = categoryManager.GetAllCategory();
                categoryDropDownList.DataTextField = "Name";
                categoryDropDownList.DataValueField = "Id";
                categoryDropDownList.DataBind();

                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataBind();
            }

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if(itemTextBox.Text == "")
            {
                outputLabel.Text = "Please Enter a Item Name";
            }
            else
            {
                Item item = new Item();
                item.Name = itemTextBox.Text;
                if (reorderLabelTextBox.Text == "")
                {
                    item.ReorderLevel = 0;
                }
                else
                {
                    item.ReorderLevel = Convert.ToInt32(reorderLabelTextBox.Text);

                }
                item.CategoryId = Convert.ToInt32(categoryDropDownList.SelectedValue);
                item.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
                item.AvailableQuantity = 0;

                outputLabel.Text = itemManager.Save(item);
                itemTextBox.Text = "";
                reorderLabelTextBox.Text = "";
            }
            
        }
    }
}
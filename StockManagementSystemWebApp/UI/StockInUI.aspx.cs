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
    public partial class StockInUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        StockInManager stockInManager = new StockInManager();
        ItemManager itemManager = new ItemManager();
        Item aItem = new Item();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataBind();

                ListItem liComapny = new ListItem("--- Select Item---", "-1");
                companyDropDownList.Items.Insert(0, liComapny);

                ListItem liItem = new ListItem("--- Select Item---", "-1");
                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.Enabled = false;
                reorderLabelTextBox.Enabled = false;
                avilableQuantityTextBox.Enabled = false;
            }

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            StockIn stockInItem = new StockIn();
            if(stockInQuantityTextBox.Text == "")
            {
                outputLabel.Text = "Please Input a Stock In Quantity";
            }
            else
            {

                stockInItem.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
                stockInItem.ItemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                stockInItem.AvailableQuantity = Convert.ToInt32(avilableQuantityTextBox.Text);
                stockInItem.StockInQuantity = Convert.ToInt32(stockInQuantityTextBox.Text);

                string message = stockInManager.ItemSave(stockInItem);


                outputLabel.Text = message;

                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataBind();

                ListItem liComapny = new ListItem("--- Select Item---", "-1");
                companyDropDownList.Items.Insert(0, liComapny);

                itemDropDownList.Items.Clear();

                ListItem liItem = new ListItem("--- Select Item---", "-1");

                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.DataTextField = "Name";
                itemDropDownList.DataValueField = "Id";
                itemDropDownList.DataBind();

                itemDropDownList.Enabled = false;
                reorderLabelTextBox.Enabled = false;
                avilableQuantityTextBox.Enabled = false;

                reorderLabelTextBox.Text = "";
                avilableQuantityTextBox.Text = "";
                stockInQuantityTextBox.Text = "";
            }
        }

        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            List<Item> items = new List<Item>();

            items = itemManager.GetAllItems().Where(m => m.CompanyId == Convert.ToInt32(companyDropDownList.SelectedItem.Value)).ToList();

            ListItem liItem = new ListItem("--- Select Item---", "-1");

            if (items.Count == 0)
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                itemDropDownList.DataSource = items;
                itemDropDownList.DataTextField = "Name";
                itemDropDownList.DataValueField = "Id";
                itemDropDownList.DataBind();

                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.SelectedIndex = 0;
                itemDropDownList.Enabled = true;
            }



        }

        protected void itemDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            aItem = itemManager.GetReorderLabel(Convert.ToInt32(itemDropDownList.SelectedItem.Value));


            reorderLabelTextBox.Text = aItem.ReorderLevel.ToString();
            avilableQuantityTextBox.Text = aItem.AvailableQuantity.ToString();
        }
    }
}
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
    public partial class StockOutUI : System.Web.UI.Page
    {
        List<ItemView> itemViewModels = new List<ItemView>();
        CompanyManager companyManager = new CompanyManager();
        StockOutManager stockOutManager = new StockOutManager();
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
                availableQuantityTextBox.Enabled = false;
                stockOutQuantityTextBox.Enabled = false;
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
            stockOutQuantityTextBox.Enabled = true;


            reorderLabelTextBox.Text = aItem.ReorderLevel.ToString();
            availableQuantityTextBox.Text = aItem.AvailableQuantity.ToString();
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            if(stockOutQuantityTextBox.Text == "")
            {
                outputLabel.Text = "Please enter Stock In Quentity.";
            }
            else if(Convert.ToInt32(stockOutQuantityTextBox.Text)== 0)
            {
                outputLabel.Text = "Stock Out Quantity Must Not Be ZERO!";
            }
            else if( Convert.ToInt32(availableQuantityTextBox.Text) <= Convert.ToInt32(stockOutQuantityTextBox.Text))
            {
                outputLabel.Text = "Not Enough In Stock!";
            }
            else if (Convert.ToInt32(reorderLabelTextBox.Text) <= Convert.ToInt32(stockOutQuantityTextBox.Text))
            {
                
                ItemView itemViewModel = new ItemView();
                itemViewModel.ItemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                itemViewModel.ItemName = itemDropDownList.SelectedItem.ToString();
                itemViewModel.CompanyName = companyDropDownList.SelectedItem.ToString();
                itemViewModel.Quantity = Convert.ToInt32(stockOutQuantityTextBox.Text);

                if (ViewState["itemVS"] == null)
                {
                    itemViewModels.Add(itemViewModel);
                    ViewState["itemVS"] = itemViewModels;
                }
                else
                {
                    itemViewModels = (List<ItemView>)ViewState["itemVS"];

                    itemViewModels.Add(itemViewModel);
                    ViewState["itemVS"] = itemViewModels;
                }

                stockOutGridView.DataSource = itemViewModels;
                stockOutGridView.DataBind();
                outputLabel.Text = "Item Added";
            }
            else
            {
                outputLabel.Text = "Stock Out Quentity Must be Greater Then or Equal to Reorder Label.";
            }
            
        }

        protected void sellButton_Click(object sender, EventArgs e)
        {
            outputLabel.Text = SaveByMethod("SELL");
            

        }

        protected void damageButton_Click(object sender, EventArgs e)
        {
            outputLabel.Text = SaveByMethod("DAMAGE");
        }

        protected void lostButton_Click(object sender, EventArgs e)
        {
            outputLabel.Text = SaveByMethod("LOST");

        }
        private string SaveByMethod(string method)
        {
            if (ViewState["itemVS"] == null)
            {
                return "Please add some item.";
            }
            else
            {
                itemViewModels = (List<ItemView>)ViewState["itemVS"];

                foreach (ItemView itemView in itemViewModels)
                {
                    StockOut stockOut = new StockOut();
                    stockOut.ItemId = itemView.ItemId;
                    stockOut.Quantity = itemView.Quantity;
                    stockOut.Type = method;
                    stockOut.Date = DateTime.Today;

                    stockOutManager.Save(stockOut);
                    stockInManager.Update(stockOut.ItemId, stockOut.Quantity);
                }
                stockOutGridView.DataSource = null;
                stockOutGridView.DataBind();
                return "Saved into " + method;
            }


        }

    }
}
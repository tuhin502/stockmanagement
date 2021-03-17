using StockManagementSystemWebApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagementSystemWebApp.UI
{
    public partial class ViewSalesUI : System.Web.UI.Page
    {
        SearchViewManager searchViewManager = new SearchViewManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getFromDateLinkButton_Click(object sender, EventArgs e)
        {
            fromDatePicker.Visible = true;
        }

        protected void getToDateLinkButton_Click(object sender, EventArgs e)
        {
            toDatePicker.Visible = true;
        }

        protected void fromDatePicker_SelectionChanged(object sender, EventArgs e)
        {
            fromDateTextBox.Text = fromDatePicker.SelectedDate.ToShortDateString();
            fromDatePicker.Visible = false;
        }

        protected void toDatePicker_SelectionChanged(object sender, EventArgs e)
        {
            toDateTextBox.Text = toDatePicker.SelectedDate.ToShortDateString();
            toDatePicker.Visible = false;
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            string fromDate = fromDateTextBox.Text;
            string toDate = toDateTextBox.Text;

            if (String.Compare(fromDate, toDate) < 0)
            {
                searchGridView.DataSource = searchViewManager.GetInfoByDate(fromDate, toDate);

                searchGridView.DataBind();
            }

            else
            {
                outputLabel.Text = "FromDate must be Less then ToDate.";
                searchGridView.DataSource = null;

                searchGridView.DataBind();

            }
        }

        
    }
}
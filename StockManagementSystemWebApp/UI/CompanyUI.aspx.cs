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
    public partial class CompanySetupUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            companySetupGridView.DataSource = companyManager.GetAllCompany();
            companySetupGridView.DataBind();

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Company aCompanny = new Company();
            if(nameTextBox.Text == "")
            {
                outputLabel.Text = "Please Enter a Company Name";
            }
            else
            {
                aCompanny.Name = nameTextBox.Text;
                outputLabel.Text = companyManager.Save(aCompanny);
                companySetupGridView.DataSource = companyManager.GetAllCompany();
                companySetupGridView.DataBind();
                nameTextBox.Text = "";

            }
            
        }
    }
}
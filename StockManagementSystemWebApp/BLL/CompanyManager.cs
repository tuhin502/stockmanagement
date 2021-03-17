using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.BLL
{
    public class CompanyManager
    {
        CompanyGateway companyGateway = new CompanyGateway();

        public string Save(Company company)
        {
            if (companyGateway.IsCompanyNameExist(company.Name))
            {
                return "Company Name Already Exist";
            }
            else
            {
                int rowAffect = companyGateway.Save(company);

                if (rowAffect > 0)
                {
                    return "Save Successful";
                }
                else
                {
                    return "Save Failed";
                }

            }

        }

        public List<Company> GetAllCompany()
        {
            return companyGateway.GetAllCompany();
        }
    }
}
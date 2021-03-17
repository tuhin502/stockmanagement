using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.BLL
{
    public class StockOutManager
    {
        StockOutGateway stockOutGateway = new StockOutGateway();
        public string Save(StockOut stockout)
        {

            int rowAffect = stockOutGateway.Save(stockout);


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
}
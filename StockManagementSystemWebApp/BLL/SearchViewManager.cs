using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models.View_Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.BLL
{
    public class SearchViewManager
    {
        StockOutGateway stockOutGateway = new StockOutGateway();

        public List<SearchViewModel> GetInfoByDate(string fromDate, string toDate)
        {
            return stockOutGateway.GetInfoByDate(fromDate, toDate);
        }
    }
}
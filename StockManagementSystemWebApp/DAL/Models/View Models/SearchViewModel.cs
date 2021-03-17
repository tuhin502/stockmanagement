using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.DAL.Models.View_Models
{
    public class SearchViewModel
    {
        public int Sl { get; set; }
        public string ItemName { get; set; }
        public string CompanyName { get; set; }

        public int Quantity { get; set; }
    }
}
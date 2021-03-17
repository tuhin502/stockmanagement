using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.BLL
{
    public class StockInManager
    {
        StockInGateway stockInGateway = new StockInGateway();
        public string ItemSave(StockIn stockIn)
        {
            int rowAffect = stockInGateway.StockSave(stockIn);
            if (rowAffect > 0)
            {
                return "Saved Sucessfull";
            }
            else
            {
                return "Save Faild";
            }
         }

        public string Update(int itemId, int quantity)
        {
            int availablequantity = stockInGateway.GetStockInById(itemId);
            availablequantity -= quantity;
            StockIn stockIn = new StockIn();
            stockIn.ItemId = itemId;
            stockIn.AvailableQuantity = availablequantity;

            int rowAffect = stockInGateway.Update(stockIn);
            if (rowAffect > 0)
            {
                return "Update Successful";
            }
            else
            {
                return "Update Failed";
            }
        }
    }
}
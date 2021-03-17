using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.BLL
{
    public class ItemManager
    {
        ItemGateway itemGateway = new ItemGateway();
        public string Save(Item item)
        {
            if (itemGateway.IsItemExists(item.Name))
            {
                return "Item Name Already Exists ";
            }
            else
            {
                int rowAffect = itemGateway.Save(item);
                if (rowAffect > 0)
                {
                    return "Saved Sucessfull";
                }
                else
                {
                    return "Save Faild";
                }
            }
        }
        public List<Item> GetAllItems()
        {
            return itemGateway.GetAllItems();
        }

        public Item GetReorderLabel(int ItemId)
        {

            return itemGateway.GetReorderLabel(ItemId);
        }
        public List<Item> GetAllSearchItem(int companyId, int categoryId)
        {
            return itemGateway.GetAllSearchItem(companyId, categoryId);
        }

        internal List<Item> GetItemsByCompany(int company)
        {
            return itemGateway.GetAllItemsByCompany(company);
        }
    }
}
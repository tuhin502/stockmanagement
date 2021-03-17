using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class StockInGateway:CommonGateway
    {
        public int StockSave(StockIn stockIn)
        {
            int x = stockIn.AvailableQuantity + stockIn.StockInQuantity;
            string query = "UPDATE Item SET AvailableQuentity = "+x+" WHERE Id = " + stockIn.ItemId+" AND CompanyId = "+stockIn.CompanyId;
            Command = new SqlCommand(query,Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffect;
        }

        public int Update(StockIn stockIn)
        {
            string query = "Update Item SET AvailableQuentity='" + stockIn.AvailableQuantity + "' WHERE  Id= '" + stockIn.ItemId + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
        public int GetStockInById(int ItemId)
        {
            string query = "SELECT AvailableQuentity FROM Item WHERE Id ='" + ItemId + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            if (Reader.HasRows)
            {
                int availableQuantity = Convert.ToInt32(Reader["AvailableQuentity"]);
                Connection.Close();
                return availableQuantity;

            }

            Connection.Close();
            return 0;
        }
    }
}
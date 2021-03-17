using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using StockManagementSystemWebApp.DAL.Models;
using StockManagementSystemWebApp.DAL.Models.View_Models;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class StockOutGateway:CommonGateway
    {
        public int Save(StockOut stockout)
        {

            string query = "INSERT INTO StockOut VALUES('" + stockout.ItemId + "','" + stockout.Quantity + "','" + stockout.Date + "','" + stockout.Type + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
        public List<SearchViewModel> GetInfoByDate(string fromDate, string toDate)
        {
            string query = "SELECT *FROM GetReport WHERE Date Between '"+fromDate+"' AND '"+toDate+"'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            int count = 1;
            List<SearchViewModel> informations = new List<SearchViewModel>();
            while (Reader.Read())
            {
                SearchViewModel info = new SearchViewModel();
                info.Sl = count;
                info.ItemName = Reader["ItemName"].ToString();
                info.CompanyName = Reader["CompanyName"].ToString();
                info.Quantity = Convert.ToInt32(Reader["Quantity"]);
                count++;



                informations.Add(info);
            }

            Connection.Close();

            return informations;
        }
    }
}
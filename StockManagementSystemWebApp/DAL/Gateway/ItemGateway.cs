using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using StockManagementSystemWebApp;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class ItemGateway:CommonGateway
    {
        public int Save(Item item)
        {
            string query = "INSERT INTO Item VALUES('"+item.Name+"',"+item.CompanyId+","+item.CategoryId+","+item.ReorderLevel+","+item.AvailableQuantity+")";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowaffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowaffect;
        }
        public bool IsItemExists(string item)
        {
            string query = "SELECT * FROM Item WHERE Name='" + item + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

        public List<Item> GetAllItems()
        {
            string query = "SELECT * FROM Item";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Item> Itemlist = new List<Item>();
            while (Reader.Read())
            {
                Item item = new Item();
                item.Id = Convert.ToInt32(Reader["Id"]);
                item.CategoryId = Convert.ToInt32(Reader["CategoryId"]);
                item.CompanyId = Convert.ToInt32(Reader["CompanyId"]);
                item.Name = Reader["Name"].ToString();
                item.ReorderLevel = Convert.ToInt32(Reader["ReorderLavel"]);

                Itemlist.Add(item);

            }

            Connection.Close();
            return Itemlist;
        }

        public Item GetReorderLabel(int ItemId)
        {
            Item item = new Item();
            item.ReorderLevel = 0;
            item.AvailableQuantity = 0;
            string query = "SELECT * FROM Item WHERE Id=" + ItemId;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            if (Reader.HasRows)
            {
                Reader.Read();
                item.Id = Convert.ToInt32(Reader["Id"]);
                item.ReorderLevel = Convert.ToInt32(Reader["ReorderLavel"]);
                item.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuentity"]);
            }
            Connection.Close();
            return item;

        }
        public List<Item> GetAllSearchItem(int companyId, int categoryId)
        {
            string query = "SELECT * FROM GetAllItems WHERE CompanyId = " + companyId + "AND categoryId =" + categoryId;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int count = 1;
            Reader = Command.ExecuteReader();
            List<Item> Itemlist = new List<Item>();
            while (Reader.Read())
            {
                Item item = new Item();
                item.Id = count;
                item.CategoryName = Reader["CategoryName"].ToString();
                item.CompanyName = Reader["CompanyName"].ToString();
                item.Name = Reader["Name"].ToString();
                item.ReorderLevel = Convert.ToInt32(Reader["ReorderLavel"]);
                item.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuentity"]);

                Itemlist.Add(item);
                count++;

            }

            Connection.Close();
            return Itemlist;
        }


        internal List<Item> GetAllItemsByCompany(int company)
        {
            string query = "SELECT * FROM GetAllItems WHERE CompanyId = " + company;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Item> Itemlist = new List<Item>();
            while (Reader.Read())
            {
                Item item = new Item();
                item.Id = Convert.ToInt32(Reader["Id"]);
                item.CategoryName = Reader["CategoryName"].ToString();
                item.CompanyName = Reader["CompanyName"].ToString();
                item.Name = Reader["Name"].ToString();
                item.ReorderLevel = Convert.ToInt32(Reader["ReorderLavel"]);
                item.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuentity"]);

                Itemlist.Add(item);

            }
            Connection.Close();
            return Itemlist;
        }
    }
}
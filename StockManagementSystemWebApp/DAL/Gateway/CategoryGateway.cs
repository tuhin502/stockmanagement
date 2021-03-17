using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CategoryGateway
    {
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        public CategoryGateway()
        {
            string conString = WebConfigurationManager.ConnectionStrings["CategoryDBConString"].ConnectionString;
            connection = new SqlConnection(conString);
        }
        public int Save(Category category)
        {
            string qurey = "INSERT INTO Category VALUES('" + category.Name + "')";
            command = new SqlCommand(qurey, connection);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }

        public bool IsCategoryNameExist(string Name)
        {
            string qurey = "SELECT *FROM Category WHERE Name = '"+Name+"'";
            command = new SqlCommand(qurey, connection);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();
            return isExist;

        }

        public List<Category> GetAllCategory()
        {
            string qurey = "SELECT *FROM Category";
            command = new SqlCommand(qurey, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Category> categories = new List<Category>();
            int i = 1;
            while(reader.Read())
            {
                Category category = new Category();
                category.Sl = i;
                category.Id = Convert.ToInt32(reader["Id"]);
                category.Name = reader["Name"].ToString();

                categories.Add(category);
                i++;
            }
            reader.Close();
            connection.Close();
            return categories;
        }

        public Category GetCategoryById(int id)
        {
            string qurey = "SELECT *FROM Category WHERE ID ="+id;
            command = new SqlCommand(qurey, connection);
            connection.Open();
            reader = command.ExecuteReader();
            reader.Read();
            Category category = null;
            if(reader.HasRows)
            {
                category = new Category();
                category.Id = Convert.ToInt32(reader["Id"]);
                category.Name = reader["Name"].ToString();
            }
              
            reader.Close();
            connection.Close();
            return category;
        }

        public int UpdateById(Category category)
        {
            string qurey = "UPDATE Category SET Name = '"+category.Name+"' WHERE Id ="+category.Id;
            command = new SqlCommand(qurey, connection);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }

        public int DeleteById(int id)
        {
            string qurey = "DELETE FROM Category WHERE Id="+id;
            command = new SqlCommand(qurey, connection);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }

    }
}
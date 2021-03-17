using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using StockManagementSystemWebApp.DAL.Models;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CompanyGateway
    {
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        public CompanyGateway()
        {
            string conString = WebConfigurationManager.ConnectionStrings["CompanyDBConString"].ConnectionString;
            connection = new SqlConnection(conString);
        }
        public int Save(Company company)
        {
            string qurey = "INSERT INTO Company VALUES('" + company.Name + "')";
            command = new SqlCommand(qurey, connection);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }

        public bool IsCompanyNameExist(string Name)
        {
            string qurey = "SELECT *FROM Company WHERE Name = '"+Name+"'";
            command = new SqlCommand(qurey, connection);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();
            return isExist;

        }

        public List<Company> GetAllCompany()
        {
            string qurey = "SELECT *FROM Company";
            command = new SqlCommand(qurey, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Company> companies = new List<Company>();
            int i = 1;
            while(reader.Read())
            {
                Company company = new Company();
                company.Sl = i;
                company.Id = Convert.ToInt32(reader["Id"]);
                company.Name = reader["Name"].ToString();

                companies.Add(company);
                i++;
            }
            reader.Close();
            connection.Close();
            return companies;
        }
    }
}
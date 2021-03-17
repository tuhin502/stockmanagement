using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CommonGateway
    {
            public SqlConnection Connection { get; set; }
            public SqlCommand Command { get; set; }
            public SqlDataReader Reader { get; set; }
            public string Query { get; set; }
            public string connectionstring = WebConfigurationManager.ConnectionStrings["CompanyDBConString"].ConnectionString;

            public CommonGateway()
            {
                Connection = new SqlConnection(connectionstring);
                Command = new SqlCommand();
            }
    }
}
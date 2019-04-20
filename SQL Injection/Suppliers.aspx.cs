using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQL_Injection
{
    public partial class Suppliers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sqlConnection = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;


            string supplierId = Request.QueryString["SupplierId"];

            if (supplierId == null)
            {
                //this part load all suppliers from the database 
                string sqlString = "Select SupplierID, CompanyName, ContactName, Country FROM Suppliers";
                using (SqlCommand command = new SqlCommand(sqlString, new SqlConnection(sqlConnection)))
                {
                    command.Connection.Open();
                    gv_supplier.DataSource = command.ExecuteReader();
                    gv_supplier.DataBind();
                }
            }
            else
            {
                var sqlProductSelectConnection = WebConfigurationManager.ConnectionStrings["ProductSelect"].ConnectionString;

                //This part load products that are supplied by each supplier based on the supplier ID 
                var sqlString = string.Format("Select ProductName, QuantityPerUnit, UnitPrice FROM Products where SupplierID ={0} ORDER BY UnitPrice ", supplierId) ;
                using (SqlCommand command = new SqlCommand(sqlString, new SqlConnection(sqlProductSelectConnection)))
                {
                    command.Connection.Open();
                    gv_products.DataSource = command.ExecuteReader();
                    gv_products.DataBind();
                }

            }



        }
    }
}
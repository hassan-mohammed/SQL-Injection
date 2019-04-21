using System;
using System.Collections.Generic;
using System.Data;
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
            var dc = new NorthwindEntities();

            string supplierId = Request.QueryString["SupplierId"];

            if (supplierId == null)
            {
               var suppliers =  dc.Suppliers.ToList();
                gv_supplier.DataSource = suppliers;
                gv_supplier.DataBind();

            }
            else
            {
                int supId;
                if (!int.TryParse(supplierId, out supId))
                    throw new Exception("Cann't parse the SupplierId to integar");
                var products = dc.Products.Where(p => p.ProductID == supId).ToList();
                gv_products.DataSource = products;
                gv_products.DataBind();

            }



        }
    }
}
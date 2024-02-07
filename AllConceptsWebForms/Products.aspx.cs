using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllConceptsWebForms
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                string query = "SELECT * FROM Products";
                SqlCommand cmd = new SqlCommand(query);
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvProducts.DataSource = dt;
                        gvProducts.DataBind();
                    }
                }
            }

        }
    }
}
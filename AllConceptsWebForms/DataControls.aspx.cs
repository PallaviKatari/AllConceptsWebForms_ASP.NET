using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllConceptsWebForms
{
    public partial class DataControls : System.Web.UI.Page
    {
        string conn = "Server=CGVAK-LT156\\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGridview();
        }
     
        private void bindGridview()
        {
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select * from emp28", con);

            SqlDataReader reader;
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();
            }
            catch (Exception)
            {
            }
            finally
            {
                con.Close();
            }
        }

    }
}
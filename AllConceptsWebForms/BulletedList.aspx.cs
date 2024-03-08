using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;

namespace AllConceptsWebForms
{
    public partial class BulletedList : System.Web.UI.Page
    {
        string conn = "Server=CGVAK-LT156\\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select * from emp28", con);

            SqlDataReader reader;
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                BulletedList1.DataTextField = "empname";
                BulletedList1.DataSource = reader;
                BulletedList1.DataBind();
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
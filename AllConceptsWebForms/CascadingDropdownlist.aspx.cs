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
    public partial class CascadingDropdownlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList2.Enabled = false;
                DropDownList3.Enabled = false;
                DropDownList1.DataSource = getData("spGetCountries", null);
                DropDownList1.DataBind();

                ListItem LICountry = new ListItem("----Select----", "-1");
                DropDownList1.Items.Insert(0, LICountry);
                ListItem LIState = new ListItem("----Select----", "-1");
                DropDownList2.Items.Insert(0, LIState);
                ListItem LICity = new ListItem("----Select----", "-1");
                DropDownList3.Items.Insert(0, LICity);

            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                DropDownList2.SelectedIndex = 0;
                DropDownList3.SelectedIndex = 0;
                DropDownList2.Enabled = false;
                DropDownList3.Enabled = false;
            }
            else
            {
                DropDownList2.Enabled = true;
                SqlParameter Parameter = new SqlParameter("@CountryID", DropDownList1.SelectedValue);
                DropDownList2.DataSource = getData("spGetStates", Parameter);
                DropDownList2.DataBind();

                ListItem LIState = new ListItem("----Select----", "-1");
                DropDownList2.Items.Insert(0, LIState);

                DropDownList3.SelectedIndex = 0;
                DropDownList3.Enabled = false;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "-1")
            {
                DropDownList3.SelectedIndex = 0;
                DropDownList3.Enabled = false;
            }
            else
            {
                DropDownList3.Enabled = true;
                SqlParameter Parameter = new SqlParameter("@StateID", DropDownList2.SelectedValue);
                DropDownList3.DataSource = getData("spGetCities", Parameter);
                DropDownList3.DataBind();

                ListItem LICity = new ListItem("----Select----", "-1");
                DropDownList3.Items.Insert(0, LICity);
            }
        }
        private DataSet getData(string Proc, SqlParameter Parameter)
        {
            string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlDataAdapter DA = new SqlDataAdapter(Proc, con);
                DA.SelectCommand.CommandType = CommandType.StoredProcedure;
                if (Parameter != null)
                {
                    DA.SelectCommand.Parameters.Add(Parameter);
                }
                DataSet DS = new DataSet();
                DA.Fill(DS);
                return DS;
            }
        }
    }
}
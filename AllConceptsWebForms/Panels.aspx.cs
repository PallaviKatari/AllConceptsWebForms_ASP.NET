using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllConceptsWebForms
{
    public partial class Panels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Query String
            string firstname = Request.QueryString["firstname"];
            string lastname = Request.QueryString["lastname"];
            Label1.Text = firstname + " " + lastname;


            //make the panel visible
            pnldynamic.Visible = chkvisible.Checked;

            //generating the lable controls:
            int n = Int32.Parse(ddllabels.SelectedItem.Value);
            for (int i = 1; i <= n; i++)
            {
                Label lbl = new Label();
                lbl.Text = "Label" + (i).ToString();
                pnldynamic.Controls.Add(lbl);
                pnldynamic.Controls.Add(new LiteralControl("<br />"));
            }

            //generating the text box controls:

            int m = Int32.Parse(ddltextbox.SelectedItem.Value);
            for (int i = 1; i <= m; i++)
            {
                TextBox txt = new TextBox();
                txt.Text = "Text Box" + (i).ToString();
                pnldynamic.Controls.Add(txt);
                pnldynamic.Controls.Add(new LiteralControl("<br />"));
            }
        }
    }
}
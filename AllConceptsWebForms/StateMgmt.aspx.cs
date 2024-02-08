using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllConceptsWebForms
{
    public partial class StateMgmt : System.Web.UI.Page
    {
        String mystr;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session State
            this.lblshstr.Text = this.mystr;
            this.lblsession.Text = (String)this.Session["str"];


            //Page Life Cycle
            //lblmessage.Text += "Page load event handled. <br />";

            //if (Page.IsPostBack)
            //{
            //    lblmessage.Text += "Page post back event handled.<br/>";
            //}

            //Hidden Field
            HiddenFieldDemo.Value = DateTime.Now.ToString();
            lblTime.InnerText = Convert.ToString(HiddenFieldDemo.Value);
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            //lblmessage.Text += "Page initialization event handled.<br/>";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //lblmessage.Text += "Page prerender event handled. <br/>";
        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            lblmessage.Text += "Button click event handled. <br/>";

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            lblmessage1.Text = "Selected node changed to: " + TreeView1.SelectedNode.Text;
            TreeNodeCollection childnodes = TreeView1.SelectedNode.ChildNodes;

            if (childnodes != null)
            {
                TextBox1.Text = " ";

                foreach (TreeNode t in childnodes)
                {
                    TextBox1.Text += t.Value;
                }
            }
        }
        public int counter
        {
            get
            {
                if (ViewState["pcounter"] != null)
                {
                    return ((int)ViewState["pcounter"]);
                }
                else
                {
                    return 0;
                }
            }

            set
            {
                ViewState["pcounter"] = value;
            }
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            lblCounter.Text = counter.ToString();
            counter++;

        }
        //Session state
        protected void btnstr_Click(object sender, EventArgs e)
        {
            this.mystr = this.txtstr.Text;
            this.Session["str"] = this.txtstr.Text;
            this.lblshstr.Text = this.mystr;
            this.lblsession.Text = (String)this.Session["str"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Charts.aspx?firstname=" + TextBox2.Text + "&lastname=" + TextBox3.Text);
        }

    }
}
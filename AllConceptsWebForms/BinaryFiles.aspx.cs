using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllConceptsWebForms
{
    public partial class BinaryFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Read the file and convert it to Byte Array

            string filePath = FileUpload1.PostedFile.FileName;

            string filename = Path.GetFileName(filePath);

            string ext = Path.GetExtension(filename);

            string contenttype = String.Empty;



            //Set the contenttype based on File Extension

            switch (ext)

            {

                case ".doc":

                    contenttype = "application/vnd.ms-word";

                    break;

                case ".docx":

                    contenttype = "application/vnd.ms-word";

                    break;

                case ".xls":

                    contenttype = "application/vnd.ms-excel";

                    break;

                case ".xlsx":

                    contenttype = "application/vnd.ms-excel";

                    break;

                case ".jpg":

                    contenttype = "image/jpg";

                    break;

                case ".png":

                    contenttype = "image/png";

                    break;

                case ".gif":

                    contenttype = "image/gif";

                    break;

                case ".pdf":

                    contenttype = "application/pdf";

                    break;

            }

            if (contenttype != String.Empty)

            {



                Stream fs = FileUpload1.PostedFile.InputStream;

                BinaryReader br = new BinaryReader(fs);

                Byte[] bytes = br.ReadBytes((Int32)fs.Length);



                //insert the file into database

                string strQuery = "insert into dbFiles(Name, ContentType, Data)" +

                   " values (@Name, @ContentType, @Data)";

                SqlCommand cmd = new SqlCommand(strQuery);

                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;

                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value

                  = contenttype;

                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;

                InsertUpdateData(cmd);

                lblMessage.ForeColor = System.Drawing.Color.Green;

                lblMessage.Text = "File Uploaded Successfully";

            }

            else

            {

                lblMessage.ForeColor = System.Drawing.Color.Red;

                lblMessage.Text = "File format not recognised." +

                  " Upload Image/Word/PDF/Excel formats";

            }
        }
        private Boolean InsertUpdateData(SqlCommand cmd)

        {

            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(strConnString);

            cmd.CommandType = CommandType.Text;

            cmd.Connection = con;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();

                return true;

            }

            catch (Exception ex)

            {

                Response.Write(ex.Message);

                return false;

            }

            finally

            {

                con.Close();

                con.Dispose();

            }
        }
        // CODE BEHIND ////////////////////////////////
        // Fires when Active Steps changed
        protected void StepChanged(object sender, EventArgs e)
        {
            Label1.Text += "<br /><b>Have a Nice day!!!<b />";
        }


        // Fires when Finish button clicked
        protected void FinishButtonClicked(object sender, WizardNavigationEventArgs e)
        {
            Label1.Text = "Following are your details: <br />" +
                "Name: " + txtName.Text + "<br />" +
                "Contact Number: " + txtNumber.Text + "<br />" +
                "Email: " + txtEmail.Text + "<br />" +
                "Address: " + txtAddress.Text + "<br />" +
                "City: " + txtCity.Text;
        }

        protected void Wizard2_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Label2.Text = "Employee details: <br />" +
               "ID: " + TextBox1.Text + "<br />" +
                "NAME : " + TextBox2.Text + "<br />" +
                "Designation: " + TextBox3.Text;

        }

        protected void Wizard2_ActiveStepChanged(object sender, EventArgs e)
        {
            Label2.Text += "<br /><b>Have a Nice day!!!<b />";
        }

    }
}
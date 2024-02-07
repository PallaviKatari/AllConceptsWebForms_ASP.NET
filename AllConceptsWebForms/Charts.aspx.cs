using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace AllConceptsWebForms
{
    public partial class Charts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SeriesChartType type = SeriesChartType.Bubble;
            DisplayChart(type);

        }

        private void DisplayChart(SeriesChartType cType)
        {
            DataTable dt = new DataTable();
            DbOperation db = new DbOperation();
            dt = db.MarksDetails();
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i]["Name"].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i]["Total Marks"]);
            }
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = cType;
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            Chart1.Legends[0].Enabled = true;
        }
    }
    public class Configuration
    {
        internal static string connectionString = ConfigurationManager.ConnectionStrings["TraineesConnectionString"].ConnectionString;
    }
    public class DbOperation
    {
        private void selectData(string StoredProcedureName, out DataTable dtemp, [Optional] string[,] aryParameters)
        {
            using (SqlConnection con = new SqlConnection(Configuration.connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    con.Open();
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter adp = new SqlDataAdapter();
                    DataTable dt = new DataTable();
                    cmd.CommandText = StoredProcedureName;
                    cmd.CommandTimeout = 300;
                    //try
                    //{
                    //    for (int i = 0; i < aryParameters.GetLength(0); i++)
                    //    {
                    //        cmd.Parameters.Add(new SqlParameter(aryParameters[i, 0], aryParameters[i, 1]));
                    //    }
                    //}
                    //catch (Exception ex)
                    //{

                    //}
                    cmd.Connection = con;
                    adp.SelectCommand = cmd;
                    adp.Fill(dt);
                    con.Close();
                    dtemp = dt;
                }
            }
        }
        public DataTable MarksDetails()
        {
            DataTable dt = new DataTable();
            selectData("SpStudentInfo", out dt, null);
            return dt;
        }
    }
}
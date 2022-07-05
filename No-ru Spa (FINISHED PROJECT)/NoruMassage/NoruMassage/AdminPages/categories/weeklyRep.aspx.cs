using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NoruMassage.AdminPages.categories
{
    public partial class weeklyRep : System.Web.UI.Page
    {

        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            showRepTbl();
        }

        private void showRepTbl()
        {
            Con.Open();
            string Query = "select * from repTbl";
            SqlDataAdapter sda = new SqlDataAdapter(Query, Con);
            SqlCommandBuilder Builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            repGV.DataSource = ds.Tables[0];
            repGV.DataBind();

            Con.Close();
        }

        protected void addBttn_Click(object sender, EventArgs e)
        {
            addReport();
        }

        protected void editBttn_Click(object sender, EventArgs e)
        {
            updateReport();
        }

        protected void deleteBttn_Click(object sender, EventArgs e)
        {
            /**deleteItem();*/
        }

        protected void repGV_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "Report Number";
                e.Row.Cells[2].Text = "Report";
                e.Row.Cells[3].Text = "Status";
            }

        }

        int Key = 0;

        protected void repGV_SelectedIndexChanged(object sender, EventArgs e)
        {


            reportTb.Value = repGV.SelectedRow.Cells[2].Text;
            statusTb.Value = repGV.SelectedRow.Cells[3].Text;

            if (reportTb.Value == "")
            {

                Key = 0;

            }
            else
            {

                Key = Convert.ToInt32(repGV.SelectedRow.Cells[1].Text);

            }

        }

        private void updateReport()
        {

            if (reportTb.Value == "" || statusTb.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                Con.Open();

                SqlCommand cmd = new SqlCommand("Update repTbl set Report = @Report, Status = @Status where reportID = @PKey", Con);
                cmd.Parameters.AddWithValue("@itemName", reportTb.Value);
                cmd.Parameters.AddWithValue("@itemQty", statusTb.Value);
                cmd.Parameters.AddWithValue("@PKey", repGV.SelectedRow.Cells[1].Text);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Equipment Updated')", true);

                Con.Close();

                showRepTbl();
            }

        }

        private void addReport()
        {
            if (reportTb.Value == "" || statusTb.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                try
                {

                    Con.Open();

                    SqlCommand cmd = new SqlCommand("insert into repTbl values(@Report, @Status)", Con);
                    cmd.Parameters.AddWithValue("@Report", reportTb.Value);
                    cmd.Parameters.AddWithValue("@Status", statusTb.Value);
                    cmd.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Item Added')", true);

                    Con.Close();

                    showRepTbl();
                }
                catch (Exception Ex)
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information')", true);
                }

            }
        }
    }
}
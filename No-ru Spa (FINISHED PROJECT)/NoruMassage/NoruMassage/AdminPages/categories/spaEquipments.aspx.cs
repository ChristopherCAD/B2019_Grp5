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
    public partial class spaEquipments : System.Web.UI.Page
    {
        
        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            showEQPTable();
        }

        protected void addBttn_Click(object sender, EventArgs e)
        {
            addEquipment();
        }

        protected void editBttn_Click(object sender, EventArgs e)
        {
            editEquipment();
        }

        protected void deleteBttn_Click(object sender, EventArgs e)
        {
            deleteEquipment();
        }

        private void showEQPTable()
        {
            Con.Open();
            string Query = "select * from equipmentTbl";
            SqlDataAdapter sda = new SqlDataAdapter(Query, Con);
            SqlCommandBuilder Builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            equipmentGV.DataSource = ds.Tables[0];
            equipmentGV.DataBind();

            Con.Close();
        }

        protected void equipmentGV_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "";
                e.Row.Cells[2].Text = "Equipment";
                e.Row.Cells[3].Text = "Availability";
                e.Row.Cells[4].Text = "Status";
            }

        }

        int Key = 0;

        protected void equipmentGV_SelectedIndexChanged(object sender, EventArgs e)
        {


            eqpmntTb.Value = equipmentGV.SelectedRow.Cells[2].Text;
            avlbltTb.Value = equipmentGV.SelectedRow.Cells[3].Text;
            statTb.Value = equipmentGV.SelectedRow.Cells[4].Text;

            if (eqpmntTb.Value == "")
            {

                Key = 0;

            }
            else
            {

                Key = Convert.ToInt32(equipmentGV.SelectedRow.Cells[1].Text);

            }

        }

        // FUNCTIONS

        private void editEquipment()
        {

            if (eqpmntTb.Value == "" || avlbltTb.Value == "" || statTb.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                Con.Open();

                SqlCommand cmd = new SqlCommand("Update equipmentTbl set Equipment = @Equipment, Availability = @Availability, Status = @Status where eqpmntId = @PKey", Con);
                cmd.Parameters.AddWithValue("@Equipment", eqpmntTb.Value);
                cmd.Parameters.AddWithValue("@Availability", avlbltTb.Value);
                cmd.Parameters.AddWithValue("@Status", statTb.Value);
                cmd.Parameters.AddWithValue("@PKey", equipmentGV.SelectedRow.Cells[1].Text);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Equipment Updated')", true);
                
                Con.Close();

                showEQPTable();
            }

        }

        private void addEquipment()
        {
            if (eqpmntTb.Value == "" || avlbltTb.Value == "" || statTb.Value == "")
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                try
                {

                    Con.Open();
                    SqlCommand cmd = new SqlCommand("insert into equipmentTbl values(@Equipment, @Availability, @Status)", Con);
                    cmd.Parameters.AddWithValue("@Equipment", eqpmntTb.Value);
                    cmd.Parameters.AddWithValue("@Availability", avlbltTb.Value);
                    cmd.Parameters.AddWithValue("@Status", statTb.Value);
                    
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Equipment Added')", true);
                    Con.Close();
                    showEQPTable();
                }
                catch (Exception Ex)
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information')", true);
                }

            }
        }

        private void deleteEquipment()
        {

            if (eqpmntTb.Value == "" || avlbltTb.Value == "" || statTb.Value == "")
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                try
                {

                    Con.Open();
                    SqlCommand cmd = new SqlCommand("delete from equipmentTbl where eqpmntId = @PKey", Con);
                    cmd.Parameters.AddWithValue("@PKey", equipmentGV.SelectedRow.Cells[1].Text);
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Equipment Reported')", true);
                    Con.Close();
                    showEQPTable();
                }
                catch (Exception Ex)
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information')", true);
                }

            }

        }

    }
}
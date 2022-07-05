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
    public partial class supply : System.Web.UI.Page
    {

        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            showSupplyTbl();
        }

        protected void addBttn_Click(object sender, EventArgs e)
        {
            addItem();
        }

        protected void editBttn_Click(object sender, EventArgs e)
        {
            updateItem();
        }

        protected void deleteBttn_Click(object sender, EventArgs e)
        {
            /**deleteItem();*/
        }

        private void showSupplyTbl()
        {
            Con.Open();
            string Query = "select * from supplyTbl";
            SqlDataAdapter sda = new SqlDataAdapter(Query, Con);
            SqlCommandBuilder Builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            supplyGV.DataSource = ds.Tables[0];
            supplyGV.DataBind();

            Con.Close();
        }

        /* FUNCTIONS */
        protected void supplyGV_RowDataBount(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "";
                e.Row.Cells[2].Text = "Item";
                e.Row.Cells[3].Text = "Quantity";
                e.Row.Cells[4].Text = "Quantity (PER BOX)";
                e.Row.Cells[5].Text = "Date Added / Resupplied";
                e.Row.Cells[6].Text = "Supplier";
            }

        }

        int Key = 0;

        protected void supplyGV_SelectedIndexChanged(object sender, EventArgs e)
        {


            itemTb.Value = supplyGV.SelectedRow.Cells[2].Text;
            qtyTb.Value = supplyGV.SelectedRow.Cells[3].Text;
            qtyBoxTb.Value = supplyGV.SelectedRow.Cells[4].Text;
            dateTb.Value = supplyGV.SelectedRow.Cells[5].Text;
            supplierTb.Value = supplyGV.SelectedRow.Cells[6].Text;

            if (itemTb.Value == "")
            {

                Key = 0;

            }
            else
            {

                Key = Convert.ToInt32(supplyGV.SelectedRow.Cells[1].Text);

            }

        }

        private void updateItem()
        {

            if (itemTb.Value == "" || qtyTb.Value == "" || qtyBoxTb.Value == "" ||
                dateTb.Value == "" || supplierTb.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                Con.Open();

                SqlCommand cmd = new SqlCommand("Update supplyTbl set itemName = @itemName, itemQty = @itemQty, itemQtyBox = @itemQtyBox, dateAdded = @dateAdded, supplier = @supplier where itemId = @PKey", Con);
                cmd.Parameters.AddWithValue("@itemName", itemTb.Value);
                cmd.Parameters.AddWithValue("@itemQty", qtyTb.Value);
                cmd.Parameters.AddWithValue("@itemQtyBox", qtyBoxTb.Value);
                cmd.Parameters.AddWithValue("@dateAdded", dateTb.Value);
                cmd.Parameters.AddWithValue("@supplier", supplierTb.Value);
                cmd.Parameters.AddWithValue("@PKey", supplyGV.SelectedRow.Cells[1].Text);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Equipment Updated')", true);

                Con.Close();

                showSupplyTbl();
            }

        }

        private void addItem()
        {
            if (itemTb.Value == "" || qtyTb.Value == "" || qtyBoxTb.Value == "" ||
                dateTb.Value == "" || supplierTb.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Data')", true);
            }
            else
            {
                try
                {
                    
                    Con.Open();

                    SqlCommand cmd = new SqlCommand("insert into supplyTbl values(@itemName, @itemQty, @itemQtyBox, @dateAdded, @supplier)", Con);
                    cmd.Parameters.AddWithValue("@itemName", itemTb.Value);
                    cmd.Parameters.AddWithValue("@itemQty", qtyTb.Value);
                    cmd.Parameters.AddWithValue("@itemQtyBox", qtyBoxTb.Value);
                    cmd.Parameters.AddWithValue("@dateAdded", dateTb.Value);
                    cmd.Parameters.AddWithValue("@supplier", supplierTb.Value);
                    cmd.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Item Added')", true);

                    Con.Close();

                    showSupplyTbl();
                }
                catch (Exception Ex)
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information')", true);
                }

            }
        }

    }
}
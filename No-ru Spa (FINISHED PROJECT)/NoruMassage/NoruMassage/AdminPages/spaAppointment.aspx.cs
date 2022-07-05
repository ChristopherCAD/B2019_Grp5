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
    public partial class spaAppointment : System.Web.UI.Page
    {
        
        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            showApptTbl();
        }

        protected void updateApptBttn_Click(object sender, EventArgs e)
        {
            /**updateAppt();**/
        }

        protected void editApptBttn_Click(object sender, EventArgs e)
        {
            editAppt();
        }

        protected void deleteApptBttn_Click(object sender, EventArgs e)
        {
            deleteAppt();
        }

        private void showApptTbl()
        {
            Con.Open();
            string Query = "select * from appointmentTbl";
            SqlDataAdapter sda = new SqlDataAdapter(Query, Con);
            SqlCommandBuilder Builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            apptGV.DataSource = ds.Tables[0];
            apptGV.DataBind();

            Con.Close();
        }

        protected void apptGV_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "";
                e.Row.Cells[2].Text = "First Name";
                e.Row.Cells[3].Text = "Last Name";
                e.Row.Cells[4].Text = "Phone Number";
                e.Row.Cells[5].Text = "Email";
                e.Row.Cells[6].Text = "Date";
                e.Row.Cells[7].Text = "Time";
                e.Row.Cells[8].Text = "Package";
                e.Row.Cells[9].Text = " Customer Message";
            }

        }

        /** FUNCTIONS **/

        int Key = 0;

        protected void apptGV_SelectedIndexChanged(object sender, EventArgs e)
        {


            fNameTb1.Value = apptGV.SelectedRow.Cells[2].Text;
            lNameTb1.Value = apptGV.SelectedRow.Cells[3].Text;
            phoneTb1.Value = apptGV.SelectedRow.Cells[4].Text;
            emailTb1.Value = apptGV.SelectedRow.Cells[5].Text;
            dateTb1.Value = apptGV.SelectedRow.Cells[6].Text;
            timeTb1.Value = apptGV.SelectedRow.Cells[7].Text;
            customerMsg.Value = apptGV.SelectedRow.Cells[9].Text;

            if (fNameTb1.Value == "")
            {

                Key = 0;

            }
            else
            {

                Key = Convert.ToInt32(apptGV.SelectedRow.Cells[1].Text);

            }

        }

        private void editAppt()
        {
            if (fNameTb1.Value == "" || lNameTb1.Value == "" || phoneTb1.Value == "" ||
                emailTb1.Value == "" || dateTb1.Value == "" || timeTb1.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information, please fill out the boxes.')", true);
            }
            else if (package1.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("update appointmentTbl set fName = @fName, lName = @lName, phone = @phone, email = @email, date = @date, time = @time, pckgOption = @pckgOption, customerMsg = @customerMsg where apptId = @PKey", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb1.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb1.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb1.Value);
                cmd.Parameters.AddWithValue("@email", emailTb1.Value);
                cmd.Parameters.AddWithValue("@date", dateTb1.Value);
                cmd.Parameters.AddWithValue("@time", timeTb1.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package1.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);
                cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Updated')", true);
                Con.Close();
            }
            else if (package2.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("update appointmentTbl set fName = @fName, lName = @lName, phone = @phone, email = @email, date = @date, time = @time, pckgOption = @pckgOption, customerMsg = @customerMsg where apptId = @PKey", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb1.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb1.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb1.Value);
                cmd.Parameters.AddWithValue("@email", emailTb1.Value);
                cmd.Parameters.AddWithValue("@date", dateTb1.Value);
                cmd.Parameters.AddWithValue("@time", timeTb1.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package2.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);
                cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Updated')", true);
                Con.Close();
            }
            else if (package3.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("update appointmentTbl set fName = @fName, lName = @lName, phone = @phone, email = @email, date = @date, time = @time, pckgOption = @pckgOption, customerMsg = @customerMsg where apptId = @PKey", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb1.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb1.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb1.Value);
                cmd.Parameters.AddWithValue("@email", emailTb1.Value);
                cmd.Parameters.AddWithValue("@date", dateTb1.Value);
                cmd.Parameters.AddWithValue("@time", timeTb1.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package3.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);
                cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Updated')", true);
                Con.Close();
            }
            else if (package4.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("update appointmentTbl set fName = @fName, lName = @lName, phone = @phone, email = @email, date = @date, time = @time, pckgOption = @pckgOption, customerMsg = @customerMsg where apptId = @PKey", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb1.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb1.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb1.Value);
                cmd.Parameters.AddWithValue("@email", emailTb1.Value);
                cmd.Parameters.AddWithValue("@date", dateTb1.Value);
                cmd.Parameters.AddWithValue("@time", timeTb1.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package4.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);
                cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Updated')", true);
                Con.Close();
            }
            else if (package5.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("update appointmentTbl set fName = @fName, lName = @lName, phone = @phone, email = @email, date = @date, time = @time, pckgOption = @pckgOption, customerMsg = @customerMsg where apptId = @PKey", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb1.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb1.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb1.Value);
                cmd.Parameters.AddWithValue("@email", emailTb1.Value);
                cmd.Parameters.AddWithValue("@date", dateTb1.Value);
                cmd.Parameters.AddWithValue("@time", timeTb1.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package5.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);
                cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Updated')", true);
                Con.Close();
            }
            else
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("update appointmentTbl set fName = @fName, lName = @lName, phone = @phone, email = @email, date = @date, time = @time, pckgOption = @pckgOption, customerMsg = @customerMsg where apptId = @PKey", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb1.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb1.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb1.Value);
                cmd.Parameters.AddWithValue("@email", emailTb1.Value);
                cmd.Parameters.AddWithValue("@date", dateTb1.Value);
                cmd.Parameters.AddWithValue("@time", timeTb1.Value);
                cmd.Parameters.AddWithValue("@pckgOption", "");
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);
                cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Updated')", true);
                Con.Close();
            }
            
        }

        private void deleteAppt()
        {

            if (fNameTb1.Value == "" || lNameTb1.Value == "" || phoneTb1.Value == "" ||
                emailTb1.Value == "" || dateTb1.Value == "" || timeTb1.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information, please fill out the boxes.')", true);
            }
            else
            {
                
                    Con.Open();
                    SqlCommand cmd = new SqlCommand("delete from appointmentTbl where apptID = @PKey", Con);
                    cmd.Parameters.AddWithValue("@PKey", apptGV.SelectedRow.Cells[1].Text);
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Appointment Cancelled')", true);
                    Con.Close();
                    showApptTbl();
                
            }

        }

    }
}
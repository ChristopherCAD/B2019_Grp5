using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NoruMassage
{
    public partial class schedCalendar : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void appointBttn_Click(object sender, EventArgs e)
        {

            appointSched();

        }

        private void appointSched()
        {

            if (fNameTb.Value == "" || lNameTb.Value == "" || phoneTb.Value == "" ||
                emailTb.Value == "" || dateTb.Value == "" || timeTb.Value == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Missing Information, please fill out the boxes.')", true);
            }
            else if (package1.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into appointmentTbl values(@fName, @lName, @phone, @email, @date, @time, @pckgOption, @customerMsg)", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb.Value);
                cmd.Parameters.AddWithValue("@email", emailTb.Value);
                cmd.Parameters.AddWithValue("@date", dateTb.Value);
                cmd.Parameters.AddWithValue("@time", timeTb.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package1.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Booking completed. Wait for confirmation.')", true);
                Con.Close();
            }
            else if (package2.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into appointmentTbl values(@fName, @lName, @phone, @email, @date, @time, @pckgOption, @customerMsg)", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb.Value);
                cmd.Parameters.AddWithValue("@email", emailTb.Value);
                cmd.Parameters.AddWithValue("@date", dateTb.Value);
                cmd.Parameters.AddWithValue("@time", timeTb.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package2.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Booking completed. Wait for confirmation.')", true);
                Con.Close();
            }
            else if (package3.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into appointmentTbl values(@fName, @lName, @phone, @email, @date, @time, @pckgOption, @customerMsg)", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb.Value);
                cmd.Parameters.AddWithValue("@email", emailTb.Value);
                cmd.Parameters.AddWithValue("@date", dateTb.Value);
                cmd.Parameters.AddWithValue("@time", timeTb.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package3.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Booking completed. Wait for confirmation.')", true);
                Con.Close();
            }
            else if (package4.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into appointmentTbl values(@fName, @lName, @phone, @email, @date, @time, @pckgOption, @customerMsg)", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb.Value);
                cmd.Parameters.AddWithValue("@email", emailTb.Value);
                cmd.Parameters.AddWithValue("@date", dateTb.Value);
                cmd.Parameters.AddWithValue("@time", timeTb.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package4.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Booking completed. Wait for confirmation.')", true);
                Con.Close();
            }
            else if (package5.Checked == true)
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into appointmentTbl values(@fName, @lName, @phone, @email, @date, @time, @pckgOption, @customerMsg)", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb.Value);
                cmd.Parameters.AddWithValue("@email", emailTb.Value);
                cmd.Parameters.AddWithValue("@date", dateTb.Value);
                cmd.Parameters.AddWithValue("@time", timeTb.Value);
                cmd.Parameters.AddWithValue("@pckgOption", package5.Value);
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Booking completed. Wait for confirmation.')", true);
                Con.Close();
            }
            else
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into appointmentTbl values(@fName, @lName, @phone, @email, @date, @time, @pckgOption, @customerMsg)", Con);

                cmd.Parameters.AddWithValue("@fName", fNameTb.Value);
                cmd.Parameters.AddWithValue("@lName", lNameTb.Value);
                cmd.Parameters.AddWithValue("@phone", phoneTb.Value);
                cmd.Parameters.AddWithValue("@email", emailTb.Value);
                cmd.Parameters.AddWithValue("@date", dateTb.Value);
                cmd.Parameters.AddWithValue("@time", timeTb.Value);
                cmd.Parameters.AddWithValue("@pckgOption", "");
                cmd.Parameters.AddWithValue("@customerMsg", customerMsg.Value);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Booking completed. Wait for confirmation.')", true);
                Con.Close();
            }

        }
    }
}
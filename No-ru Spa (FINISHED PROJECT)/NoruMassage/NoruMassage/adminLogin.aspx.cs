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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * FROM adminTbl where admin = @admin and password = @password", Con);
            cmd.Parameters.AddWithValue("@admin", adminTb.Value);
            cmd.Parameters.AddWithValue("@password", pwordTb.Value);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Con.Open();

            int i = cmd.ExecuteNonQuery();

            Con.Close();

            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Welcome, Admin')", true);
                Response.Redirect("AdminPages/adminHome.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Username and Password')", true);
            }

        }
    }
}
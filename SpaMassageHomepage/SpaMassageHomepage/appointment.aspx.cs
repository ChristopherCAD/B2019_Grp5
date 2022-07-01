using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaMassageHomepage
{
    public partial class schedCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Calendar1.SelectedDate > Calendar1.TodaysDate)
            {
                TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
                Label1.Text = "Date added to our appointments.";

            }
            else
            {
                Label1.Text = "Sorry, Ticket not available.";
            }


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();

        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            if (e.Day.Date.ToShortDateString() == "06/19/22")
            {

                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Red;

            }

        }

        protected void calendarIcon_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo09 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            litDate.Text = DateTime.Now.ToString("M/d/yyyy");
    }

    protected void lkbShowCal_Click(object sender, EventArgs e)
    {
        if (hidShowCalFlag.Value == "0")
        {
            calSelectDate.Visible = true;
            hidShowCalFlag.Value = "1";
            lkbShowCal.Text = "Hide Date";
            
        }
        else
        { 
            calSelectDate.Visible = false;
            hidShowCalFlag.Value = "0";
            lkbShowCal.Text = "Change Date";
        }
    }

    protected void calSelectDate_SelectionChanged(object sender, EventArgs e)
    {
        litDate.Text = calSelectDate.SelectedDate.ToString("M/d/yyy");
    }
}
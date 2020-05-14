using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo64 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // If it's not a post, which means if it's a get.
        if(!Page.IsPostBack && Session["hex45_color"] != null)
        {
            ddlColor.SelectedValue = (string)Session["hex45_color"];
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        // The session variable survives at least minutes or hours, unlike variables
        Session["hex45_color"] = ddlColor.SelectedValue;


        Random random = new Random();
        Session["hex45_random_number"] = random.Next(0, 1000);

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Session["hex45_color"] = null;
        Session["hex_45_random_number"] = null;
    }
}
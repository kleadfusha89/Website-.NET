using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo03 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lkbShowDetails_Click(object sender, EventArgs e)
    {
        if(pnlDetails.Visible == true)
        {
            pnlDetails.Visible = false;
            lkbShowDetails.Text = "Show Details";
        }
        else
        {
            pnlDetails.Visible = true;
            lkbShowDetails.Text = "Hide Details";
        }
    }
}
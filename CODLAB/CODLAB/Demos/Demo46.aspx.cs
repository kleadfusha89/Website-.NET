using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demos46 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClickMe_Click(object sender, EventArgs e)
    {
        Response.Write("Clicked! ");
    }

    protected void btnDoNotClickMe_Click(object sender, EventArgs e)
    {
        Response.Write("You were not supposed to click that! ");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Demos_Demo64b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // (string) or (int) is called a cast and it's just a promise to the compiler
        // that it will be a string or int. It's not a conversion.
        if (!String.IsNullOrEmpty((string)Session["hex45_color"]))
            litColor.Text = ((string)Session["hex45_color"]).ToUpper();
        else
            litColor.Text = "*** UNKNOWN ***";


        if (Session["hex45_random_number"] != null)
            litRandom.Text = Convert.ToString((int)Session["hex45_random_number"]);
        else
            litRandom.Text = "*** UNKNOWN ***";
    }
}
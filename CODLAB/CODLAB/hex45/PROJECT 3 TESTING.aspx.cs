using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_PROJECT_3_TESTING : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ddlPrimaryCrime_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdChicagoCrimes.DataBind();
    }

    protected void ddlSecondaryCrime_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdChicagoCrimes.DataBind();
    }

    protected void ddlWard_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdChicagoCrimes.DataBind();
    }
}
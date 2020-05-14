using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Lab10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void rblCharts_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblCharts.SelectedValue == "PieChart")
            mvwCharts.SetActiveView(viwPieCharts);
        else
            mvwCharts.SetActiveView(viwColumnCharts);
    }
}
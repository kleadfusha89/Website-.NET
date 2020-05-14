using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo62 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        int times = Convert.ToInt32(txtTimes.Text);
        
        // String by default is null, but we need an empty string "" so we can add to it
        string temp = "";

        if (times > 1000)
            times = 1000;

        for(int i = 1; i <= times; i++)
        {
            temp = temp + "---" + i + "---<br />\r\n";
            temp = temp + txtText.Text + "<br />\r\n";
        }

        litResults.Text = temp;
    }
}
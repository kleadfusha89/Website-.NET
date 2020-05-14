using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class Demos_Demo24 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();

        foreach (string key in Request.ServerVariables.AllKeys)
        {
            sb.Append("<tr><td>" + key + "</td><td>" + Request.ServerVariables[key] + "</td></tr>");
        }

        litRequest.Text = sb.ToString();
    }
}
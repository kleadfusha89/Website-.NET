using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo36b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSaveCookies_Click(object sender, EventArgs e)
    {
        HttpCookie zipCookie = new HttpCookie("ZipCode", txtZipCode.Text);
        zipCookie.Expires = DateTime.Now.AddYears(10);
        Response.Cookies.Add(zipCookie);// Adding it

        HttpCookie favColor = new HttpCookie("FavColor", ddlColor.SelectedValue);
        favColor.Expires = DateTime.Now.AddYears(10);
        Response.Cookies.Add(favColor);// Adding it




    }
}
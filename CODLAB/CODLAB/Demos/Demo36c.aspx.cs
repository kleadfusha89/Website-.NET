using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo36c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            // Request is what the client sends to the server, response is what the server responds.
            litZipCode.Text = Request.Cookies["ZipCode"].Value;
            hypWeather.NavigateUrl = "http://www.weather.com/weather/today/";
            litFavColor.Text = Request.Cookies["FavColor"].Value;



        }
    }
}
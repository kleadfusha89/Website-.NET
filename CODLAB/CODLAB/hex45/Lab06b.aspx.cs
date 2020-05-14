using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Lab06b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lstTeamSelection_SelectedIndexChanged(object sender, EventArgs e)
    {
        litTeam.Text = lstTeamSelection.SelectedValue;

        hypWikipedia.Text = "Click here to see " + lstTeamSelection.SelectedValue + " on Wikipedia!";

        imgTeam.ImageUrl = "images/Team" + lstTeamSelection.SelectedValue + ".jpg";

        imgTeam.AlternateText = lstTeamSelection.SelectedValue + " logo.";

        switch (lstTeamSelection.SelectedValue)
        {
            case "Bayern Munich":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/FC_Bayern_Munich";
                break;
            case "Juventus":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Juventus_F.C.";
                break;
            case "Milan":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/A.C._Milan";
                break;
            case "Barcelona":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/FC_Barcelona";
                break;
            case "Real Madrid":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Real_Madrid_CF";
                break;
            case "Liverpool":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Liverpool_F.C.";
                break;
            case "Manchester United":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Manchester_United_F.C.";
                break;

        }
    }


    protected void ibnWikipedia_Click1(object sender, ImageClickEventArgs e)
    {
        switch (lstTeamSelection.SelectedValue)
        {
            case "Bayern Munich":
                Response.Redirect("https://en.wikipedia.org/wiki/FC_Bayern_Munich");
                break;
            case "Juventus":
                Response.Redirect("https://en.wikipedia.org/wiki/Juventus_F.C.");
                break;
            case "Milan":
                Response.Redirect("https://en.wikipedia.org/wiki/A.C._Milan");
                break;
            case "Barcelona":
                Response.Redirect("https://en.wikipedia.org/wiki/FC_Barcelona");
                break;
            case "Real Madrid":
                Response.Redirect("https://en.wikipedia.org/wiki/Real_Madrid_CF");
                break;
            case "Liverpool":
                Response.Redirect("https://en.wikipedia.org/wiki/Liverpool_F.C.");
                break;
            case "Manchester United":
                Response.Redirect("https://en.wikipedia.org/wiki/Manchester_United_F.C.");
                break;

        }
    }
}
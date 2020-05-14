using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Project5View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ibnPlayer_Click(object sender, ImageClickEventArgs e)
    {
        mvwDisplay.SetActiveView(viwPlayers);


        ibnPlayer.ImageUrl = "~/hex45/images/p5PlayersSelected.png";
        ibnTeam.ImageUrl = "~/hex45/images/p5Teams.png";
    }

    protected void ibnTeam_Click(object sender, ImageClickEventArgs e)
    {
        mvwDisplay.SetActiveView(viwTeams);

 
        ibnPlayer.ImageUrl = "~/hex45/images/p5Players.png";
        ibnTeam.ImageUrl = "~/hex45/images/p5TeamsSelected.png";
    }

    protected void ibnTeamGeneral_Click(object sender, ImageClickEventArgs e)
    {
        grdFixtures.DataBind();
        grdInformation.DataBind();
        grdPlayers.DataBind();

        grdInformation.Visible = true;
        grdFixtures.Visible = false;
        grdPlayers.Visible = false;

        ibnTeamGeneral.ImageUrl = "~/hex45/images/soccerTeamInfoSelected.png";
        ibnTeamPlayers.ImageUrl = "~/hex45/images/soccerTeamPlayers.png";
        ibnTeamFixtures.ImageUrl = "~/hex45/images/soccerTeamFixtures.png";
    }

    protected void ibnTeamPlayers_Click(object sender, ImageClickEventArgs e)
    {
        grdFixtures.DataBind();
        grdInformation.DataBind();
        grdPlayers.DataBind();

        grdInformation.Visible = false;
        grdFixtures.Visible = false;
        grdPlayers.Visible = true;

        ibnTeamGeneral.ImageUrl = "~/hex45/images/soccerTeamInfo.png";
        ibnTeamPlayers.ImageUrl = "~/hex45/images/soccerTeamPlayersSelected.png";
        ibnTeamFixtures.ImageUrl = "~/hex45/images/soccerTeamFixtures.png";
    }

    protected void ibnTeamFixtures_Click(object sender, ImageClickEventArgs e)
    {
        grdFixtures.DataBind();
        grdInformation.DataBind();
        grdPlayers.DataBind();

        grdInformation.Visible = false;
        grdFixtures.Visible = true;
        grdPlayers.Visible = false;

        ibnTeamGeneral.ImageUrl = "~/hex45/images/soccerTeamInfo.png";
        ibnTeamPlayers.ImageUrl = "~/hex45/images/soccerTeamPlayers.png";
        ibnTeamFixtures.ImageUrl = "~/hex45/images/soccerTeamFixturesSelected.png";
    }
}
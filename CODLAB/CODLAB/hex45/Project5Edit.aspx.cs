using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Project5Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ibnAddNewTeam_Click(object sender, ImageClickEventArgs e)
    {
        ibnAddNewTeam.ImageUrl = "~/hex45/images/p5AddNewTeamSelected.png";
        ibnAddNewPlayer.ImageUrl = "~/hex45/images/p5AddNewPlayer.png";
        ibnUpdateFixture.ImageUrl = "~/hex45/images/p5UpdateFixture.png";

        mvwEditTeams.SetActiveView(viwAddNewTeam);
    }

    protected void ibnAddNewPlayer_Click(object sender, ImageClickEventArgs e)
    {
        ibnAddNewTeam.ImageUrl = "~/hex45/images/p5AddNewTeam.png";
        ibnAddNewPlayer.ImageUrl = "~/hex45/images/p5AddNewPlayerSelected.png";
        ibnUpdateFixture.ImageUrl = "~/hex45/images/p5UpdateFixture.png";

        mvwEditTeams.SetActiveView(viwAddNewPlayer);
    }

    protected void ibnUpdateFixture_Click(object sender, ImageClickEventArgs e)
    {
        ibnAddNewTeam.ImageUrl = "~/hex45/images/p5AddNewTeam.png";
        ibnAddNewPlayer.ImageUrl = "~/hex45/images/p5AddNewPlayer.png";
        ibnUpdateFixture.ImageUrl = "~/hex45/images/p5UpdateFixtureSelected.png";

        mvwEditTeams.SetActiveView(viwUpdateFixtures);
    }
}
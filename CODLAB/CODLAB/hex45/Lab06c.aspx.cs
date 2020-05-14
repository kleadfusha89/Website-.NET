using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Lab06c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && Session["hex45_exlamation"] != null)
        {
            ddlExlamation.SelectedValue = (string)Session["hex45_exlamation"];
        }


        if (!Page.IsPostBack && Session["hex45_adverb"] != null)
        {
            rblAdverb.SelectedValue = (string)Session["hex45_adverb"];
        }


        if (!Page.IsPostBack && Session["hex45_noun"] != null)
        {
            lstNoun.SelectedValue = (string)Session["hex45_noun"];
        }


        Session["hex45_adverb"] = rblAdverb.SelectedValue;
        Session["hex45_noun"] = lstNoun.SelectedValue;
    }

    protected void radAdRotator_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwAdRotator);
    }

    protected void radQuickLinks_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwQuickLInks);
    }

    protected void radMadLib_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwMadLibs);
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        Response.Redirect(ddlQuickLinks.SelectedValue);
    }

    protected void ddlExlamation_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlExlamation.SelectedIndex == 0)
        {
            Session["hex45_exlamation"] = null;
        }

        else
            Session["hex45_exlamation"] = ddlExlamation.SelectedValue;
    }

    protected void rblAdverb_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hex45_adverb"] = rblAdverb.SelectedValue;
    }

    protected void lstNoun_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hex45_noun"] = lstNoun.SelectedValue;
    }
}
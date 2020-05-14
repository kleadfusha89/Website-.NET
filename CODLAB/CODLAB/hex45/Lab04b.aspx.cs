using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Lab04b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!String.IsNullOrEmpty((string)Session["hex45_exlamation"]))
            litExlamation.Text = ((string)Session["hex45_exlamation"]) + "!";
        else
            litExlamation.Text = "???";



        if (!String.IsNullOrEmpty((string)Session["hex45_adverb"]))
            litAdverb.Text = ((string)Session["hex45_adverb"]).ToLower();
        else
            litAdverb.Text = "???";



        if (!String.IsNullOrEmpty((string)Session["hex45_noun"]))
            litNoun.Text = ((string)Session["hex45_noun"]).ToLower();
        else
            litNoun.Text = "???";





    }
}
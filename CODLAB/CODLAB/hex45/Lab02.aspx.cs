using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class hex45_Lab02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        lblDisplayText.Text = txtUserEntry.Text;
    }

    protected void ddlFontSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplayText.Font.Size = FontUnit.Parse(ddlFontSize.SelectedValue);
    }

    protected void ddlForegroundColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplayText.ForeColor = Color.FromName(ddlForegroundColor.SelectedValue);
    }

    protected void ddlBackgroundColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplayText.BackColor = Color.FromName(ddlBackgroundColor.SelectedValue);
    }

    protected void chkBold_CheckedChanged(object sender, EventArgs e)
    {
        lblDisplayText.Font.Bold = chkBold.Checked;
    }

    protected void chkItalic_CheckedChanged(object sender, EventArgs e)
    {
        lblDisplayText.Font.Italic = chkItalic.Checked;
    }

    protected void chkVisible_CheckedChanged(object sender, EventArgs e)
    {
        lblDisplayText.Visible = chkVisible.Checked;
    }
}
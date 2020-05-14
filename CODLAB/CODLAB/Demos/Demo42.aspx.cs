using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo42 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChkPrime1_Click(object sender, EventArgs e)
    {
        if (Demo42Prime.IsPrime(Convert.ToInt32(txtNumber1.Text)))
            lblResults.Text = txtNumber1.Text + " is prime.";
        else
            lblResults.Text = txtNumber1.Text + " is not prime.";
    }

    protected void btnChkPrime2_Click(object sender, EventArgs e)
    {
        if (Demo42Prime.IsPrime(Convert.ToInt32(txtNumber1.Text)))
            lblResults.Text = txtNumber2.Text + " is prime.";
        else
            lblResults.Text = txtNumber2.Text + " is not prime.";
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo05 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChkPrime1_Click(object sender, EventArgs e)
    {
        CheckAndUpdateLabelIfPrime(txtNumber1.Text);
    }

    protected void btnChkPrime2_Click(object sender, EventArgs e)
    {
        CheckAndUpdateLabelIfPrime(txtNumber2.Text);
    }

    private void CheckAndUpdateLabelIfPrime(string number)
    {
        CheckAndUpdateLabelIfPrime(Convert.ToInt32(number));
    }
    private void CheckAndUpdateLabelIfPrime(int number)
    {
        if (IsPrime(number))
            litResult.Text = number + " is prime.";
        else
            litResult.Text = number + " is not prime.";
    }

    private bool IsPrime(int value)
    {
        for(int counter = 3; counter < value; counter++)
        {
            if (value % counter == 0)
                return false;
        }

        return true;
    }

}
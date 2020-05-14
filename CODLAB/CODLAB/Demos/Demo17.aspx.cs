using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo17 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        int dividend;
        int divisor;
        int quotient;

        try
        { 


        dividend = Convert.ToInt32(txtDividend.Text);
        divisor = Convert.ToInt32(txtDivisor.Text);
                
       // if (divisor == 0)
       //  {
       //      litResult.Text = "You cannot divide by 0.";
       //      return;
       //  }

        quotient = dividend / divisor;
        litResult.Text = "The quotient is " + quotient;

        }
        catch(FormatException)
        {
            litResult.Text = "You must enter two integers. Please try again.";
        }

        catch(DivideByZeroException)
        {
            litResult.Text = "You can not divide by zero. Please try again";
        }

        catch (Exception ex)
        {
            litResult.Text = "An error occurred: " + ex.Message;
        }
    }
}
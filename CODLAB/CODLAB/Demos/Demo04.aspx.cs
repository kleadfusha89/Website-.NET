using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        // If you don't do this all validation is only client side.
        if(Page.IsPostBack && !Page.IsValid)
        {
            Response.Write("Error - Javascript must be enabled on this site.");
            Response.End();
        }
    }

    protected void btnCompute_Click(object sender, EventArgs e)
    {
        //*** SAMPLE RESULT:  $400,000 at 6.5% for 30 years = $2523.81 ***

        // Should use decimal for money, but for now we will use double

        //Specify constant Values
        const double INTEREST_CALCS_PER_YEAR = 12;
        const double PAYMENTS_PER_YEAR = 12;

        //Variable declaration and calculation
        double principal = Convert.ToDouble(txtPrincipal.Text);
        double monthlyRate = Convert.ToDouble(txtIntRate.Text) / 100.0 / INTEREST_CALCS_PER_YEAR;
        double payPeriods = 0;

        if (rblPeriod.SelectedValue == "years")
            payPeriods = Convert.ToDouble(txtYearsOrMonths.Text) * PAYMENTS_PER_YEAR;
        else
            payPeriods = Convert.ToDouble(txtYearsOrMonths.Text);

        double annualRate = Math.Exp(INTEREST_CALCS_PER_YEAR * Math.Log(1 + monthlyRate)) - 1;

        double interestPerPayment = (Math.Exp(Math.Log(annualRate + 1) / payPeriods) - 1) * payPeriods;

        //Now, compute the total cost of the loan
        double interestPerMonth = interestPerPayment / PAYMENTS_PER_YEAR;

        double costPerMonth = principal * interestPerMonth / (1 - Math.Pow(interestPerMonth + 1, -1 * payPeriods));

        //Display Results
        lblResult.Text = "Your mortgage payment per month is $" + Math.Round(costPerMonth, 2);
    }

    protected void rblPeriod_SelectedIndexChanged(object sender, EventArgs e)
    {
        litYearsOrMonths.Text = rblPeriod.SelectedValue;

        if(rblPeriod.SelectedValue == "months")
        {
            rgvtxtYearsOrMonths.Text = "Period must be between 12 and 1188";
            rgvtxtYearsOrMonths.MinimumValue = "12";
            rgvtxtYearsOrMonths.MaximumValue = "1188";

        }
        else
        {
            rgvtxtYearsOrMonths.Text = "Period must be between 1 and 99";
            rgvtxtYearsOrMonths.MinimumValue = "1";
            rgvtxtYearsOrMonths.MaximumValue = "99";
        }

        Page.Validate();
    }


}
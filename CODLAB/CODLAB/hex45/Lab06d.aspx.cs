using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Lab06d : System.Web.UI.Page
{
    protected void btnCompute_Click(object sender, System.EventArgs e)
    {
        //*** SAMPLE RESULT:  $400,000 at 6.5% for 30 years = $2523.81 ***

        // Should use decimal for money, but for now we will use double

        // Don't do anything unless all validation controls are successful
        if (Page.IsPostBack && !Page.IsValid)
        {
            Response.Write("ERROR - JavaScript must be enabled on this site");
            Response.End();
        }

        // Specify constant Values
        const double DBL_INTEREST_CALCS_PER_YEAR = 12;
        const double DBL_PAYMENTS_PER_YEAR = 12;

        // Variable declaration and calculation
        double principal = Convert.ToDouble(txtPrincipal.Text);
        double monthlyRate = Convert.ToDouble(txtIntRate.Text) / 100.0 / DBL_INTEREST_CALCS_PER_YEAR;
        double payPeriods = 0;

        if (rblPeriod.SelectedValue == "years")
            payPeriods = Convert.ToDouble(txtYearsOrMonths.Text) * DBL_PAYMENTS_PER_YEAR;
        else
            payPeriods = Convert.ToDouble(txtYearsOrMonths.Text);

        double annualRate = Math.Exp(DBL_INTEREST_CALCS_PER_YEAR * Math.Log(1 + monthlyRate)) - 1;

        double interestPerPayment = (Math.Exp(Math.Log(annualRate + 1) / payPeriods) - 1) * payPeriods;

        // Now, compute the total cost of the loan
        double interestPerMonth = interestPerPayment / DBL_PAYMENTS_PER_YEAR;

        double costPerMonth = principal * interestPerMonth / (1 - Math.Pow(interestPerMonth + 1, -1 * payPeriods));

        // Display Results
        lblResult.Text = "Your mortgage payment per month is $" + Math.Round(costPerMonth, 2);

    }

    protected void rblPeriod_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        litPeriod.Text = rblPeriod.SelectedValue;

        //set the literal next to the text box to "years" or "months"
        if (rblPeriod.SelectedValue == "months")
        {
            rgvtxtYearsOrMonths.ErrorMessage = "Must be between 12 and 1188 months";
            rgvtxtYearsOrMonths.MinimumValue = "12";
            rgvtxtYearsOrMonths.MaximumValue = "1188";
        }
        else
        {
            rgvtxtYearsOrMonths.ErrorMessage = "Must be between 1 and 99 years";
            rgvtxtYearsOrMonths.MinimumValue = "1";
            rgvtxtYearsOrMonths.MaximumValue = "99";
        }

        Page.Validate(); // Force the validators to re-check
    }

}
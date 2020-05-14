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
        lblResult.Text = "Your mortgage payment per month is $" + String.Format("{0:0.00}",costPerMonth);
    }

    protected void rblPeriod_SelectedIndexChanged(object sender, EventArgs e)
    {
        litYearsOrMonths.Text = rblPeriod.SelectedValue;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Lab06e : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }


    protected void lkbCalculate_Click(object sender, EventArgs e)
    {


        double curr = Convert.ToDouble(txtCurrentOdometer.Text);
        double prev = Convert.ToDouble(txtPreviousOdometer.Text);
        double gasAdded = Convert.ToDouble(txtGasAdded.Text);
        double gasPrice = Convert.ToDouble(txtGasPrice.Text);

        ///////////////////////////////////////////////////////////////

        litMilesPerGallon.Text = "Miles per gallon: ";

        double mpg = (curr - prev) / gasAdded;

        lblMilesPerGallon.Text = Convert.ToString(Math.Round(mpg, 2));

        //////////////////////////////////////////////////////////////

        litFillExpense.Text = "Your fill expense this time:";

        double fillExp = gasAdded * gasPrice;

        lblFillExpense.Text = Convert.ToString(Math.Round(fillExp, 2));

        //////////////////////////////////////////////////////////////

        litMilesTraveled.Text = "Miles traveled since last fill ";

        int traveled = Convert.ToInt32(curr) - Convert.ToInt32(prev);

        lblMilesTraveled.Text = Convert.ToString(traveled);

        //////////////////////////////////////////////////////////////

        litCostPerMile.Text = "Cost per mile: ";

        double costMile = fillExp / Convert.ToDouble(traveled);

        lblCostPerMile.Text = "$" + Math.Round(costMile, 3);




    }
}
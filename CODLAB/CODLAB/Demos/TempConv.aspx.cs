using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_TempConv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double inputTemp = Convert.ToDouble(txtInputTemperature.Text);
        double outputTemp = 3;

        if (lstUnitOfMeasure.SelectedValue == "i2m")
        {

            outputTemp = (inputTemp - 32) / 1.8;
            litOutputTemperature.Text = Convert.ToString(Math.Round(outputTemp, 2)) + "&#176; celsius";
        }
        else
        {
            outputTemp = inputTemp * 1.8 + 32;
            litOutputTemperature.Text = Convert.ToString(Math.Round(outputTemp, 2)) + "&#176; farenheit";
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Project01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rblUnits_SelectedIndexChanged(object sender, EventArgs e)
    {

        lblResult.Visible = false;

        if(rblUnits.SelectedValue == "Imperial")
        {
            txtFeet.Visible = true;
            rqvtxtFeet.Visible = true;

            rgvtxtFeet.Visible = true;

            lblFeet.Visible = true;
            lblInchesOrCm.Text = "inches";
            lblPoundsOrKg.Text = "pounds";

            rgvtxtInchesOrCm.MinimumValue = 0.ToString();
            rgvtxtInchesOrCm.MaximumValue = 11.ToString();
            rgvtxtInchesOrCm.ErrorMessage = "The value should be between 3 feet and 7 feet 11 inches.";

            rgvtxtPoundsOrKg.MinimumValue = 50.ToString();
            rgvtxtPoundsOrKg.MaximumValue = 600.ToString();
            rgvtxtPoundsOrKg.ErrorMessage = "The value should be between 50 and 600 pounds.";

        }

        else
        {
            txtFeet.Visible = false;
            rqvtxtFeet.Visible = false;

            rgvtxtFeet.Visible = false;

            lblFeet.Visible = false;
            lblInchesOrCm.Text = "centimeters";
            lblPoundsOrKg.Text = "kilograms";

            rgvtxtInchesOrCm.MinimumValue = 100.ToString();
            rgvtxtInchesOrCm.MaximumValue = 250.ToString();
            rgvtxtInchesOrCm.ErrorMessage = "The value should be between 100 and 250 centimeters.";


            rgvtxtPoundsOrKg.MinimumValue = 25.ToString();
            rgvtxtPoundsOrKg.MaximumValue = 275.ToString();
            rgvtxtPoundsOrKg.ErrorMessage = "The value should be between 25 and 275 kilograms.";
        }
       

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double result;
        lblResult.Visible = true;

        if (rblUnits.SelectedValue == "Imperial")
        {
            result =  Convert.ToDouble(txtPoundsOrKg.Text) * 703 /
                Math.Pow(( Convert.ToDouble(txtInchesOrCm.Text) + Convert.ToDouble(txtFeet.Text) * 12 ), 2);
        }

        else
        {
            result = Convert.ToDouble(txtPoundsOrKg.Text) /
                Convert.ToDouble(txtInchesOrCm.Text) / Convert.ToDouble(txtInchesOrCm.Text) * 10000;
        }

 
        if (result <= 18.5)
            lblResult.Text = "Your BMI is " + Math.Round(result, 2) + ", which is the underweight range.";

        else if (result > 18.5 && result <= 25)
            lblResult.Text = "Your BMI is " + Math.Round(result, 2) + ", which is the normal range.";

        else if (result > 25 && result <= 30)
            lblResult.Text = "Your BMI is " + Math.Round(result, 2) + ", which is the overweight range.";

        else
            lblResult.Text = "Your BMI is " + Math.Round(result, 2) + ", which is the obese range.";


    }
}
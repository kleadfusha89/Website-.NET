 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex45_Project2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        { 
            changePictureAndButtons();
        }



    }


    void clearInvoice()
    {
        lblName.Text = "";
        lblAddress.Text = "";
        lblCityStateZipCode.Text = "";
        lblPhone.Text = "";
        lblEmail.Text = "";
        lblResultItem1.Text = "";



    }

    void calculateInvoice()
    {
        lblName.Text = txtFirstName.Text + " " + txtLastName.Text;
        lblAddress.Text = txtAddress.Text;
        lblCityStateZipCode.Text = txtCity.Text + ", " + ddlState.Text + " " + txtZipCode.Text;
        lblPhone.Text = txtPhoneNumber.Text;
        lblEmail.Text = txtEmail.Text;

        if(ddlItem1.SelectedIndex != 0)
            lblResultItem1.Text = ddlItem1.SelectedItem.Text;

        if (ddlItem2.SelectedIndex != 0)
            lblResultItem2.Text = ddlItem2.SelectedItem.Text;

        if (ddlItem3.SelectedIndex != 0)
            lblResultItem3.Text = ddlItem3.SelectedItem.Text;

        lblResultQty1.Text = txtQuantity1.Text;
        lblResultQty2.Text = txtQuantity2.Text;
        lblResultQty3.Text = txtQuantity3.Text;


        double tot1 = 0, tot2 = 0, tot3 = 0, total = 0;
        

     
        if(txtQuantity1.Text != null && ddlItem1.SelectedIndex != 0)
        { 
            tot1 = Convert.ToDouble(txtQuantity1.Text) * Convert.ToDouble(ddlItem1.SelectedValue);
            lblResultEach1.Text = "$" + ddlItem1.SelectedValue;
            lblResultTotal1.Text = "$" + tot1.ToString();
        }



        if (txtQuantity2.Text != null && ddlItem2.SelectedIndex != 0)
        { 
            tot2 = Convert.ToDouble(txtQuantity2.Text) * Convert.ToDouble(ddlItem2.SelectedValue);
            lblResultEach2.Text = "$" + ddlItem2.SelectedValue;
            lblResultTotal2.Text = "$" + tot2.ToString();
        }

        if (txtQuantity3.Text != null && ddlItem3.SelectedIndex != 0)
        { 
            tot3 = Convert.ToDouble(txtQuantity3.Text) * Convert.ToDouble(ddlItem3.SelectedValue);
            lblResultEach3.Text = "$" + ddlItem3.SelectedValue;
            lblResultTotal3.Text = "$" + tot3.ToString();
        }

        total = tot1 + tot2 + tot3;
        lblResultTotal.Text = "$" + total.ToString();
    }

    void changePictureAndButtons()
    {
        ibnOrder.ImageUrl = "images/oeOrderInfo.png";
        ibnBilling.ImageUrl = "images/oeBillingDetails.png";
        ibnInvoice.ImageUrl = "images/oeInvoice.png";

        ibnOrder.AlternateText = "Order image.";
        ibnBilling.AlternateText = "Billing image.";
        ibnInvoice.AlternateText = "Invoice image.";

        lkbNextStep.Visible = true;
        lkbPreviousStep.Visible = true;

        lkbNextStep.CausesValidation = false;


        if (mvwMain.ActiveViewIndex == 0)
        {
            ibnOrder.ImageUrl = "images/oeOrderInfoSelected.png";
            ibnOrder.AlternateText = "Order image.";

            lkbPreviousStep.Visible = false;

            clearInvoice();
        }

        if (mvwMain.ActiveViewIndex == 1)
        {
            ibnBilling.ImageUrl = "images/oeBillingDetailsSelected.png";
            ibnBilling.AlternateText = "Billing image.";

            lkbNextStep.CausesValidation = true;

            clearInvoice();
        }

        if (mvwMain.ActiveViewIndex == 2)
        {
            ibnInvoice.ImageUrl = "images/oeInvoiceSelected.png";
            ibnInvoice.AlternateText = "Invoice Image";

            lkbNextStep.Visible = false;

            calculateInvoice();
        }
    }

    protected void ibnOrder_Click(object sender, ImageClickEventArgs e)
    {
        mvwMain.SetActiveView(viwOrder);
        changePictureAndButtons();
    }

    protected void ibnBilling_Click(object sender, ImageClickEventArgs e)
    {
        mvwMain.SetActiveView(viwBilling);
        changePictureAndButtons();

    }

    protected void ibnInvoice_Click(object sender, ImageClickEventArgs e)
    {
        mvwMain.SetActiveView(viwInvoice);
        changePictureAndButtons();
    }

    protected void lkbNextStep_Click(object sender, EventArgs e)
    {
        mvwMain.ActiveViewIndex += 1;
        changePictureAndButtons();
    }

 


    protected void lkbPreviousStep_Click(object sender, EventArgs e)
    {

        mvwMain.ActiveViewIndex -= 1;
        changePictureAndButtons();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo34 : System.Web.UI.Page
{
    // Class variable
    int rowCount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rptEmployees_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        // It wil fire once for each of the rows, 9 employees in our case

        if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Literal litEmpId = (Literal)e.Item.FindControl("litEmpId");
            litEmpId.Text = DataBinder.Eval(e.Item.DataItem, "EmpId").ToString();

            Literal litName = (Literal)e.Item.FindControl("litName");
            litName.Text = DataBinder.Eval(e.Item.DataItem, "FirstName").ToString() + " " + DataBinder.Eval(e.Item.DataItem, "LastName").ToString();

            Literal litBirthDate = (Literal)e.Item.FindControl("litBirthDate");
            litBirthDate.Text = DataBinder.Eval(e.Item.DataItem, "BirthDate").ToString();


            Literal litRowClass = (Literal)e.Item.FindControl("litRowClass");

            rowCount++;

            int group = (rowCount - 1) / 2;
            if (group % 2 == 0)
                litRowClass.Text = "";
            else
                litRowClass.Text = " class=\"alt\"";


        }
        else if (e.Item.ItemType == ListItemType.Footer)
        {
            litNumberOfEmployees.Text = rowCount.ToString();
        }
    }
}
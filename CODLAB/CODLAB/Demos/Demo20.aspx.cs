using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo20 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grdBooks_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // THIS EVENT IS FIRED WHENEVER WE CLICK ONE OF THE BUTTONS 

        // CommandArgument will tell you the row number.
        int rowIndex = Convert.ToInt32(e.CommandArgument);

        GridViewRow selectedRow = grdBooks.Rows[rowIndex];
        TableCell cell = selectedRow.Cells[2];

        string isbn = cell.Text;


        if (e.CommandName == "Library")
            Response.Redirect("http://www.worldcat.org/search?gt=worldcat_org_all&g=" + isbn);
        else if (e.CommandName == "Sell")
            Response.Redirect("http://www.bookfinder.com/buyback/search/#" + isbn);
        else if (e.CommandName == "Search")
            Response.Redirect("http://www.google.com/search?g=" + isbn);


    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Demos_Demo16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        SqlConnection myConnection = default(SqlConnection);
        SqlCommand myCommand = default(SqlCommand);
        int ra;

        ConnectionStringSettings myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];

        // The connection to the database
        myConnection = new SqlConnection(myConnectString.ConnectionString);
        myConnection.Open();


        myCommand = new SqlCommand("sp_hex45UpdEmpLastName", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;

        // For each argument we're passing in the procedure that we're calling there's a few extra lines of code

        // Adding the first paramenter.
        myCommand.Parameters.Add("@pEmpID", SqlDbType.Decimal, 8);
        myCommand.Parameters["@pEmpID"].Value = txtEmpId.Text;

        myCommand.Parameters.Add("@pLastName", SqlDbType.NVarChar, 8);
        myCommand.Parameters["@pLastName"].Value = txtLastName.Text;

        // It's not returning rows back that's why we it's non-query in this case.
        ra = myCommand.ExecuteNonQuery();

        myConnection.Close();

        // It means that it binds things to the database, which is basically refreshing.
        grdEmployees.DataBind();

    }
}
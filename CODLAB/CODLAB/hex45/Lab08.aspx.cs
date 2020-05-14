using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class hex45_Lab08 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   
    protected void lkbSend_Click(object sender, EventArgs e)
    {
        
        SqlConnection myConnection = default(SqlConnection);
        SqlCommand myCommand = default(SqlCommand);
        int ra;

        ConnectionStringSettings connectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];

        myConnection = new SqlConnection(connectString.ConnectionString);
        myConnection.Open();


        myCommand = new SqlCommand("sp_hex45InsMessages", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;


        myCommand.Parameters.Add("@pName", SqlDbType.NVarChar, 30);
        myCommand.Parameters["@pName"].Value = txtName.Text;

        myCommand.Parameters.Add("@pMessageText", SqlDbType.NVarChar, 140);
        myCommand.Parameters["@pMessageText"].Value = txtMessage.Text;


        ra = myCommand.ExecuteNonQuery();

        myConnection.Close();


        grdMessagge.DataBind();
        

    }

    protected void lkbCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtMessage.Text = "";



    }
}
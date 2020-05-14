using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class hex45_Project4CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ibnCheckOutConfirm_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection myConnection = default(SqlConnection);
        SqlCommand myCommand = default(SqlCommand);
        int ra;

        ConnectionStringSettings connectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];

        myConnection = new SqlConnection(connectString.ConnectionString);
        myConnection.Open();


        myCommand = new SqlCommand("sp_hex45AddMovieRental", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;


        myCommand.Parameters.Add("@pCardNbr", SqlDbType.VarChar, 6);
        myCommand.Parameters["@pCardNbr"].Value = lstMember.SelectedValue;

        myCommand.Parameters.Add("@pMovieNbr", SqlDbType.Decimal, 6);
        myCommand.Parameters["@pMovieNbr"].Value = lstMovie.SelectedValue;


        ra = myCommand.ExecuteNonQuery();

        myConnection.Close();



        string name = "";
        char check;

        for(int i = 0; i < lstMember.SelectedItem.ToString().Length; i++)
        {
            
            check = lstMember.SelectedItem.ToString()[i];

            if (check == ' ')
                break;
            else if (check == ',')
                check = ' ';

            name += check;
        }

        lblCheckOutName.Text = name;
        lblCheckOutText.Text = " checked out the movie ";
        lblCheckOutMovie.Text = lstMovie.SelectedItem.ToString();


    }
}
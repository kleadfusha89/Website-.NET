<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab03.aspx.cs" Inherits="hex45_Lab03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Klead F. (#45) - Cities of The World</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <h1>Most successful Teams in European Soccer</h1>
            <br />
            <br />

            <table>
                <tr>
                    <td>
                        Select a Team:
                        <br />
                        <asp:ListBox ID="lstTeamSelection" Height="140px" runat ="server" OnSelectedIndexChanged="lstTeamSelection_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Selected="True">Juventus</asp:ListItem>
                            <asp:ListItem>Milan</asp:ListItem>
                            <asp:ListItem>Barcelona</asp:ListItem>
                            <asp:ListItem>Real Madrid</asp:ListItem>
                            <asp:ListItem>Liverpool</asp:ListItem>
                            <asp:ListItem>Bayern Munich</asp:ListItem>
                            <asp:ListItem>Manchester United</asp:ListItem>
                        </asp:ListBox> 
                    </td>


                    <td>
                        <h2><asp:Literal ID="litTeam" runat="server" Text="Juventus"></asp:Literal></h2>

                        <asp:Image ID="imgTeam" ImageUrl="images/teamJuventus.jpg" AlternateText="Juventus Logo" runat="server" />
                        <br /><br />

                        <asp:HyperLink ID="hypWikipedia" NavigateUrl="https://en.wikipedia.org/wiki/Juventus_F.C." runat="server" >Click to view Juventus on Wikipedia</asp:HyperLink>
                        <br /><br />

                        <asp:ImageButton ID="ibnWikipedia" ImageUrl="images/WikipediaLogo.jpg" AlternateText="Wikipedia Logo" runat="server" OnClick="ibnWikipedia_Click1" />
                    </td>
                </tr>
            </table>



            <br /><br /><br />
            <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" />
            <map name="ValidationMap">
	        <area shape="rect" coords="0,0,90,79" alt="XHTML5 Validation"
	    	href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=xhtml5&amp;url=referrer" />
	        <area shape="rect" coords="91,0,180,79" alt="CSS3 Validation"
	    	href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=css3&amp;url=referrer" />
            </map> 



        
        </div>
    </form>
</body>
</html>

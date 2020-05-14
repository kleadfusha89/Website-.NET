<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab04.aspx.cs" Inherits="hex45_Lab04" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Klead F. (#45) - Lab #4</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Klead F. (#45) - Lab #4</h1>
            <br /><br />

            <asp:RadioButton ID="radAdRotator" runat="server" Text="Ad Rotator" 
                GroupName="Feature" Checked="true" OnCheckedChanged="radAdRotator_CheckedChanged" AutoPostBack="true" />
            <asp:RadioButton ID="radQuickLinks" runat="server" Text="Quick Links" 
                GroupName="Feature" OnCheckedChanged="radQuickLinks_CheckedChanged" AutoPostBack="true" />
            <asp:RadioButton ID="radMadLib" runat="server" Text="Mad Libs" 
                GroupName="Feature" OnCheckedChanged="radMadLib_CheckedChanged" AutoPostBack="true" />

            <br /><br />

            <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">
                <asp:View ID="viwAdRotator" runat="server">

                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" /><br /><br />
                            
                    
                    <asp:AdRotator ID="adrAdRotator" runat="server" Width="500px"
                        AdvertisementFile="Lab04Adverts_hex45.xml" />



                </asp:View>
                
                
                

                <asp:View ID="viwQuickLInks" runat="server">

                    <asp:XmlDataSource ID="xmlQuickLinks" runat="server"
                        DataFile="Lab04QuickLinks_hex45.xml"></asp:XmlDataSource>
                    <asp:DropDownList ID="ddlQuickLinks" runat="server"
                        DataSourceID="xmlQuickLinks" DataTextField="Text"
                        DataValueField="Value" Width="140px">


                    </asp:DropDownList>

                    <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
                    


                </asp:View>





                <asp:View ID="viwMadLibs" runat="server">
                    <span class="choices">Exlamation: </span>
                    <br />

                    <asp:DropDownList ID="ddlExlamation" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlExlamation_SelectedIndexChanged">
                        <asp:ListItem>--</asp:ListItem>
                        <asp:ListItem>Huhh</asp:ListItem>
                        <asp:ListItem>Auch</asp:ListItem>
                        <asp:ListItem>Phff</asp:ListItem>
                        <asp:ListItem>Mahh</asp:ListItem>
                        <asp:ListItem>Shhh</asp:ListItem>
                        <asp:ListItem>Bzzz</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />


                    <span class="choices">Adverb: </span>
                    <br />

                    <asp:RadioButtonList ID="rblAdverb" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblAdverb_SelectedIndexChanged">
                        <asp:ListItem>Carefully</asp:ListItem>
                        <asp:ListItem>Recklesly</asp:ListItem>
                        <asp:ListItem Selected="True">Misteriously</asp:ListItem>
                        <asp:ListItem>Arbitrarily</asp:ListItem>
                        <asp:ListItem>Energetically</asp:ListItem>
                    </asp:RadioButtonList>
                    <br /><br /><br />

                    <span class="choices">Noun: </span>
                    <br />

                    <asp:ListBox ID="lstNoun" Height="100px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lstNoun_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Tractor</asp:ListItem>
                        <asp:ListItem>Skyscraper</asp:ListItem>
                        <asp:ListItem>Football</asp:ListItem>
                        <asp:ListItem>Train</asp:ListItem>
                        <asp:ListItem>Crib</asp:ListItem>
                    </asp:ListBox>

                    <br /><br /><br />

                    <a href="Lab04b.aspx">See the Mad Lib</a>



                </asp:View>

            </asp:MultiView>

            
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

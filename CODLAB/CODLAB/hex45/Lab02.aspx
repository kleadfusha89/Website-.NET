<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab02.aspx.cs" Inherits="hex45_Lab02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Klead F. #45 - Lab #2</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Klead F. #45 - Lab #2</h1>
            <br />
            <br />
            <br />
            <asp:Label ID="lblDisplayText" runat="server" Text=""></asp:Label>
            <br /><br /><br />

            Enter text:
            <asp:TextBox ID="txtUserEntry" runat="server"></asp:TextBox>
            <asp:Button ID="btnUpdate" runat="server" Text="Update Text" OnClick="btnUpdate_Click" />
            <br /><br /><br />

            Font size:
            <asp:DropDownList ID="ddlFontSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFontSize_SelectedIndexChanged">
                <asp:ListItem>X-Small</asp:ListItem>
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem Selected="True">Medium</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
                <asp:ListItem>X-Large</asp:ListItem>
            </asp:DropDownList>
            <br />


            Foreground color:
            <asp:DropDownList ID="ddlForegroundColor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlForegroundColor_SelectedIndexChanged">
                <asp:ListItem Selected="True">Black</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Purple</asp:ListItem>
            </asp:DropDownList>
            <br />

            Background color:
            <asp:DropDownList ID="ddlBackgroundColor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBackgroundColor_SelectedIndexChanged">
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem Selected="True">White</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Purple</asp:ListItem>
            </asp:DropDownList>
            <br /><br /><br />

            <asp:CheckBox ID="chkBold" runat="server" AutoPostBack="true" OnCheckedChanged="chkBold_CheckedChanged" />
            Bold
            <br />

            <asp:CheckBox ID="chkItalic" runat="server" AutoPostBack="true" OnCheckedChanged="chkItalic_CheckedChanged" />
            Italic
            <br />

            <asp:CheckBox ID="chkVisible" runat="server" AutoPostBack="true" Checked="true" OnCheckedChanged="chkVisible_CheckedChanged" />
            Visible
            <br /> <br /> <br />


        </div>
    </form>

    <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" />
    <map name="ValidationMap">
	<area shape="rect" coords="0,0,90,79" alt="XHTML5 Validation"
		href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=xhtml5&amp;url=referrer" />
	<area shape="rect" coords="91,0,180,79" alt="CSS3 Validation"
		href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=css3&amp;url=referrer" />
</map>   

</body>
</html>

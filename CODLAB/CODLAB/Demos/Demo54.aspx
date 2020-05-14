<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo54.aspx.cs" Inherits="Classes_cis2350sp14_Demos_Demo54" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Demo #54 - Broken: No Validation Groups</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Demo #54 - Validation Groups</h1>
        <br />
        <br />
        <fieldset style="width: 600px;">
            <legend>Login</legend>
            <br />
            User:
            <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqvtxtUserName" runat="server" 
                ControlToValidate="txtUserName"
                Display="Dynamic"
                ForeColor="Red"
                ValidationGroup="Login"
                ErrorMessage="Must enter a username"></asp:RequiredFieldValidator>
            <br />
            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqvtxtPassword" runat="server" 
                ControlToValidate="txtPassword"
                TextMode="Password"
                ForeColor="Red"
                ValidationGroup="Login"
                Display="Dynamic"
                ErrorMessage="Must enter a password"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogin" runat="server" ValidationGroup="Login" 
                Text="Login" />
        </fieldset>

        <br /><br /><br /><br />

        <fieldset style="width: 600px;">
            <legend>Create New Account</legend>
            <br />
            User:
            <asp:TextBox ID="txtNewUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqvtxtNewUserName" runat="server" 
                ControlToValidate="txtNewUserName"
                Display="Dynamic"
                ForeColor="Red"
                ValidationGroup="NewUser"
                ErrorMessage="Must enter a username"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnCreateAccount" runat="server" ValidationGroup="NewUser"  
                Text="Create Account" />
        </fieldset>

        <br /><br /><br /><br />

        <fieldset style="width: 600px;">
            <legend>Search This Site</legend>
            <br />
            Search Values:
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqvtxtSearch" runat="server" 
                ControlToValidate="txtSearch"
                Display="Dynamic"
                ForeColor="Red"
                ValidationGroup="Search"
                ErrorMessage="Must enter a search value"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnSearch" runat="server"  ValidationGroup="Search"
                Text="Search" />
        </fieldset>

        <br /><br /><br /><br /> 
        <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" /> 
        <map name="ValidationMap"> 
            <area shape="rect" coords="0,0,90,79" alt="HTML5 Validation" 
                href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=xhtml5&amp;url=referrer" /> 
            <area shape="rect" coords="91,0,180,79" alt="CSS3 Validation" 
                href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=css3&amp;url=referrer" /> 
        </map>  
    
    </div>
    </form>
</body>
</html>

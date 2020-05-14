<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo61.aspx.cs" Inherits="Demos_Demo61" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #61 - Validation of a Dynamic Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #61 - Validation of a Dynamic Page</h1>
            <br /><br />

            <p>
                This is a dynamic page.
            </p>

            <asp:Image ID="imgLogo" runat="server" 
                ImageUrl="http://www.thatlink.com/Classes/images/cod_logo.png" 
                AlternateText="College Of DuPage Logo"/>

            <br /><br />

            <asp:Button ID="btnBreakIt" runat="server" Text="Break It" OnClick="btnBreakIt_Click" />

        </div>
    </form>
</body>
</html>

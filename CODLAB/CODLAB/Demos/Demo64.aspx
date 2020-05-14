<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo64.aspx.cs" Inherits="Demos_Demo64" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #64 - Session variables</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #64 - Session variables</h1>
            <br /><br />

            Color:<br />
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Purple</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            <br /><br /><br />

            <a href="Demo64b.aspx">View your color selection</a>

        </div>
    </form>
</body>
</html>

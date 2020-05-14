<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo12.aspx.cs" Inherits="Demos_Demo12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #12 - Arrays</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #12 - Arrays</h1>
            <br />
            <asp:DropDownList ID="ddlIndex" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnRetreive" runat="server" Text="Retrieve" OnClick="btnRetreive_Click" /><br /><br />
            <br /><br />

            <asp:Literal ID="litResults" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>

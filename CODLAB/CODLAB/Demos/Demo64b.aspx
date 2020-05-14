<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo64b.aspx.cs" Inherits="Demos_Demo64b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #64b - Display Session Variables</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #64b - Display Session Variables</h1>

            Your color is: <strong>
                <asp:Literal ID="litColor" runat="server"></asp:Literal></strong>

            <br /><br />

            Your random number is: <strong>
                <asp:Literal ID="litRandom" runat="server"></asp:Literal></strong>
            <br /><br />

            <a href="Demo64.aspx">Change your color</a>

        </div>
    </form>
</body>
</html>

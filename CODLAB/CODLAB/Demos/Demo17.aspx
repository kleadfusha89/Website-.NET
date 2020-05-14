<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo17.aspx.cs" Inherits="Demos_Demo17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #17 - Try / Catch Block</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #17 - Try / Catch Block</h1>
            <br /><br />

            Dividend:
            <asp:TextBox ID="txtDividend" runat="server"></asp:TextBox>
            <br /><br />

            Divisor:
            <asp:TextBox ID="txtDivisor" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnDivide" runat="server" Text="Calculate" OnClick="btnDivide_Click" />
            <br /><br />

            <asp:Literal ID="litResult" runat="server"></asp:Literal>
            <br /><br />

            <asp:Literal ID="litDateTime" runat="server"></asp:Literal>

        </div>
    </form>
</body>
</html>

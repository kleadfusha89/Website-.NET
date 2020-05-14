<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo05.aspx.cs" Inherits="Demos_Demo05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #05 - Debugger</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #05 - Debugger</h1>
            <br /><br />

            <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
            <asp:Button ID="btnChkPrime1" runat="server" Text="Check if prime" OnClick="btnChkPrime1_Click" /><br />

            <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
            <asp:Button ID="btnChkPrime2" runat="server" Text="Check if prime" OnClick="btnChkPrime2_Click" /><br />

            <br />

            <asp:Literal ID="litResult" runat="server"></asp:Literal>

        </div>
    </form>
</body>
</html>

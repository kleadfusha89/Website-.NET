<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo42.aspx.cs" Inherits="Demos_Demo42" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #42 - App_Code Folder</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #42 - App_Code Folder</h1>
            <br /><br />

            <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
            <asp:Button ID="btnChkPrime1" runat="server" Text="Button" OnClick="btnChkPrime1_Click" /><br />

            <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
            <asp:Button ID="btnChkPrime2" runat="server" Text="Button" OnClick="btnChkPrime2_Click" /><br />

            <br />
            <br />

            <asp:Label ID="lblResults" runat="server" Text="Label"></asp:Label>


        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo13.aspx.cs" Inherits="Demos_Demo13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #13 = Collections</title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnAdd">
        <div>
            <h1>Demo #13 - Collections</h1>
            <br />

            <asp:ListBox ID="lstMain" runat="server" Rows="12" Width="150px"></asp:ListBox>
            <br /><br />

            <asp:Button ID="btnRemove" runat="server" Text="Remove Selected Item" OnClick="btnRemove_Click" /><br /><br />
            <asp:Button ID="btnRemoveFirst" runat="server" Text="Remove First Item" OnClick="btnRemoveFirst_Click" /><br /><br />
            <asp:Button ID="btnRemoveLast" runat="server" Text="Remove Last Item" OnClick="btnRemoveLast_Click" /><br /><br />

            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /><br /><br />

            <asp:TextBox ID="txtNewItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" /><br /><br />

        </div>
    </form>
</body>
</html>

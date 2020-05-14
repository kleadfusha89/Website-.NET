<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo02.aspx.cs" Inherits="Demos_Demo02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Klead F. (#45) - Mortgage Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Klead F. (#45) - Mortgage Calculator</h1>
            <br /><br /> 

            Principal amount:
            <asp:TextBox ID="txtPrincipal" runat="server"></asp:TextBox>
            <br />

            Annual Interest Rate:
            <asp:TextBox ID="txtIntRate" runat="server"></asp:TextBox>
            <br />

            Mortgage Length:
            <asp:TextBox ID="txtYearsOrMonths" runat="server"></asp:TextBox>
            <asp:Literal ID="litYearsOrMonths" runat="server">years</asp:Literal>
            <br /><br />

            <asp:RadioButtonList ID="rblPeriod" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblPeriod_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="years">Years</asp:ListItem>
                <asp:ListItem Value="months">Months</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />

            <asp:Button ID="btnCompute" runat="server" Text="Compute" OnClick="btnCompute_Click" />
            <br /><br /><br />

            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>

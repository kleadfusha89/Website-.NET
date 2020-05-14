<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TempConv.aspx.cs" Inherits="Demos_TempConv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature conversion</title>
    <link type="text/css" rel="stylesheet" href="cis2350.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Temperature conversion</h1>

            <br />

            Enter a temperature:
            <asp:TextBox ID="txtInputTemperature" runat="server"></asp:TextBox>
            <br /><br />

            <asp:ListBox ID="lstUnitOfMeasure" runat="server" Rows="2" >
                <asp:ListItem Value="i2m" Selected="True">Imperial to Metric</asp:ListItem>
                <asp:ListItem Value="m2i">Metric to Imperial</asp:ListItem>

            </asp:ListBox>
            <br /><br />

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            <br /><br /><br /><br />

            <asp:Literal ID="litOutputTemperature" runat="server"></asp:Literal>

            <asp:RequiredFieldValidator ID="rqvtxtInputTemperature" runat="server" 
                ErrorMessage="You must enter a temperature."
                ControlToValidate="txtInputTemperature"
                Display="Dynamic"
                SetFocusOnError="true"
                Text="*"
                ></asp:RequiredFieldValidator>

            <asp:RangeValidator ID="rgvtxtInputTemperature" runat="server" 
                ErrorMessage="Temperature Must be a number between -500 and 1000"
                ControlToValidate="txtInputTemperature"
                Display="Dynamic"
                SetFocusOnError="true"
                MinimumValue="-500"
                MaximumValue="1000"
                Type="Double"
                ></asp:RangeValidator>

        </div>
    </form>
</body>
</html>

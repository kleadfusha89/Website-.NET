<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo04.aspx.cs" Inherits="Demos_Demo02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Klead F. (#45) - Mortgage Calculator with validation</title>
    <style>
        span.error {color: red; font-weight: bold;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Klead F. (#45) - Mortgage Calculator with validation</h1>

            <br /><br />

            Principal amount:
            <asp:TextBox ID="txtPrincipal" runat="server"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="rqvtxtPrincipal" runat="server"
                ControlToValidate="txtPrincipal"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"
                ErrorMessage="You must enter a principal amount"></asp:RequiredFieldValidator>
            
            <asp:RangeValidator ID="rgvtxtPrincipal" runat="server"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"
                ControlToValidate="txtPrincipal"
                MinimumValue="50000"
                MaximumValue="10000000"
                Type="Double"
                ErrorMessage="Principal must be between $50,000 and 10,000,000"></asp:RangeValidator>
            <br />

            Annual Interest Rate:
            <asp:TextBox ID="txtIntRate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqvtxtIntRate" runat="server" 
                ControlToValidate="txtIntRate"
                ErrorMessage="You must enter an interest rate!"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true">
            </asp:RequiredFieldValidator>

            <asp:RangeValidator ID="rgvtxtIntRate" runat="server"
                ErrorMessage="Interest rate must be between 0.5% and 25.0%"
                ControlToValidate="txtIntRate"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"
                MinimumValue="0.5"
                MaximumValue="25"
                Type="Double"
                ></asp:RangeValidator>
                

            <br />

            Mortgage Length:
            <asp:TextBox ID="txtYearsOrMonths" runat="server"></asp:TextBox>
            <asp:Literal ID="litYearsOrMonths" runat="server">years</asp:Literal>

            <asp:RequiredFieldValidator ID="rqvtxtYearsOrMonth" runat="server" 
                ErrorMessage="You must enter the number of years"
                ControlToValidate="txtYearsOrMonths"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"></asp:RequiredFieldValidator>

            <asp:RangeValidator ID="rgvtxtYearsOrMonths" runat="server" 
                ErrorMessage="The number of years must be between 1 and 99"
                ControlToValidate="txtYearsOrMonths"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"
                MinimumValue="1"
                MaximumValue="99"
                Type="Integer"
                ></asp:RangeValidator>


 
            <br /><br />

            <asp:RadioButtonList ID="rblPeriod" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblPeriod_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="years">Years</asp:ListItem>
                <asp:ListItem Value="months">Months</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />


            Zip Code:
            <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revtxtZipCode" runat="server" 
                ErrorMessage="Zip Code must be in the form 99999 or 99999-9999"
                
                ControlToValidate="txtZipCode"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"
                ValidationExpression="\d{5}(-\d{4})?"
                ></asp:RegularExpressionValidator>

            <br /><br />

            Property Value:
            <asp:TextBox ID="txtPropertyValue" runat="server"></asp:TextBox>


            <asp:CompareValidator ID="cmvtxtPropertyValue" runat="server" 
                ControlToValidate="txtPropertyValue"
                Display="Dynamic"
                CssClass="error"
                SetFocusOnError="true"
                Type="Double"
                Operator="GreaterThan"
                ControlToCompare="txtPrincipal"

                ErrorMessage="Property should be greater than the principal amount."></asp:CompareValidator>




            <br /><br />


            <asp:Button ID="btnCompute" runat="server" Text="Compute" OnClick="btnCompute_Click" />
            <br /><br /><br />

            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>

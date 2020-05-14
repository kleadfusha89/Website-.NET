<%@ Page Title="Klead F. (#45) - Lab #6d - Mortgage Calculator" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Lab06d.aspx.cs" Inherits="hex45_Lab06d" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">
    <div>
        <h1>Klead F. (#45) - Lab #6d - Mortgage Calculator</h1>

        <span class="mileageText"> Principal Amount: </span>
        <asp:TextBox ID="txtPrincipal" runat="server" />
        <asp:RangeValidator ID="rgvtxtPrincipal"
            runat="server" 
            Text="*"
            ErrorMessage="Principal must be between 50,000 and 10,000,000" 
            MinimumValue="50000"  
            MaximumValue="10000000" 
            Type="Double" 
            Display="Dynamic"
            CssClass="error" 
            SetFocusOnError="True"
            ControlToValidate="txtPrincipal">
        </asp:RangeValidator>
        <asp:RequiredFieldValidator 
            ID="rqvtxtPrincipal" 
            runat="server" 
            Text="*"
            ErrorMessage="Principal is required"
            Display="Dynamic" 
            CssClass="error" 
            SetFocusOnError="True"
            ControlToValidate="txtPrincipal">
        </asp:RequiredFieldValidator>
        <br />
        
        
        <span class="mileageText"> Annual Interest Rate: </span>
        <asp:TextBox ID="txtIntRate" runat="server" />%
        <asp:RangeValidator ID="rgvtxtIntRate"
            runat="server" 
            Text="*"
            ErrorMessage="Interest rate must be between 0.5% and 25.0%" 
            MinimumValue="0.5"  
            MaximumValue="25" 
            Type="Double" 
            Display="Dynamic"
            CssClass="error"  
            SetFocusOnError="True"
            ControlToValidate="txtIntRate">
        </asp:RangeValidator>
        <asp:RequiredFieldValidator 
            ID="rqvtxtIntRate" 
            runat="server" 
            Text="*"
            ErrorMessage="Interest rate is required"
            Display="Dynamic"
            CssClass="error"  
            SetFocusOnError="True"
            ControlToValidate="txtIntRate">
        </asp:RequiredFieldValidator>
        <br />
        
        <span class="mileageText"> Mortgage Length: </span>
        <asp:TextBox ID="txtYearsOrMonths" runat="server" />
        <asp:Literal ID="litPeriod" runat="server">years</asp:Literal>
        <asp:RangeValidator 
            ID="rgvtxtYearsOrMonths"
            runat="server" 
            Text="*"
            ErrorMessage="Mortgage length must be a whole number between 1 and 99 years" 
            MinimumValue="0.5"  
            MaximumValue="99" 
            Type="Double" 
            Display="Dynamic"
            CssClass="error"  
            SetFocusOnError="True"
            ControlToValidate="txtYearsOrMonths">
        </asp:RangeValidator>
        <asp:RequiredFieldValidator 
            ID="rqvtxtYearsOrMonths" 
            runat="server" 
            Text="*"
            ErrorMessage="Mortgage length required"
            Display="Dynamic"
            CssClass="error"  
            SetFocusOnError="True"
            ControlToValidate="txtYearsOrMonths">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        
        <asp:RadioButtonList ID="rblPeriod" runat="server" AutoPostBack="True" 
            OnSelectedIndexChanged="rblPeriod_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="years">Years</asp:ListItem>
            <asp:ListItem Value="months">Months</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        
        <span class="mileageText"> Property value: </span>
        <asp:TextBox ID="txtPropertyValue" runat="server" />
        <asp:RequiredFieldValidator 
            ID="rqvtxtPropertyValue" 
            runat="server" 
            Text="*"
            ErrorMessage="Property value is required"
            Display="Dynamic"
            CssClass="error"  
            SetFocusOnError="True"
            ControlToValidate="txtPropertyValue">
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cmvtxtPropertyValue" runat="server" 
            Text="*"
            ErrorMessage="Property value must be greater than or equal to the loan principal" 
            ControlToCompare="txtPrincipal" 
            ControlToValidate="txtPropertyValue" 
            Type="Double"
            Operator="GreaterThanEqual" 
            Display="Dynamic"
            CssClass="error"              
            SetFocusOnError="True">
        </asp:CompareValidator>
        <br />
        
        <span class="mileageText">Property Zip Code: </span>
        <asp:TextBox ID="txtZipCode" runat="server" />
        <asp:RequiredFieldValidator 
            ID="rqvtxtZipCode" 
            runat="server" 
            Text="*"
            ErrorMessage="Zip code is required"
            Display="Dynamic"            
            CssClass="error"  
            SetFocusOnError="True"
            ControlToValidate="txtZipCode">
        </asp:RequiredFieldValidator>        
        <asp:RegularExpressionValidator ID="revtxtZipCode" runat="server" 
            Text="*"
            ErrorMessage="Must be a valid U.S. Zip Code" 
            ControlToValidate="txtZipCode"
            Display="Dynamic"
            CssClass="error" 
            SetFocusOnError="True" 
            ValidationExpression="\d{5}(-\d{4})?">
        </asp:RegularExpressionValidator>
        <br /><br /><br />
      
        
        <asp:ValidationSummary ID="vsmSummaryMsg" 
            runat="server" 
            HeaderText="Fix the following errors and resubmit." 
            DisplayMode="BulletList" 
            CssClass="error" 
            ShowSummary="true"
            ShowMessageBox="True" />
        <br /><br /><br />
        
                
        <asp:Button ID="btnCompute" runat="server" Text="Compute Monthly Payment" OnClick="btnCompute_Click" />
        <br /><br /><br />
        
        <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Large" />
        <br />


    </div>

</asp:Content>


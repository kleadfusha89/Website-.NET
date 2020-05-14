<%@ Page Title="Klead F. (#45) - Lab #6e - Mileage Calculator" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Lab06e.aspx.cs" Inherits="hex45_Lab06e" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">

    <div>
        <h1>Klead F. (#45) - Lab #6e - Mileage Calculator</h1>

        <span class="mileageText">Current Odometer reading:</span>
        <asp:TextBox ID="txtCurrentOdometer" runat="server" Columns="10"></asp:TextBox>

        <span class="mileageUnits">Miles </span>

            <asp:RequiredFieldValidator ID="rqvtxtCurrentOdometer" 
                    runat="server" 
                    ErrorMessage="Fill in a value for Current Odometer."
                    CssClass="error"
                    Display="Dynamic"
                    SetFocusOnError="True"
                    ControlToValidate="txtCurrentOdometer">                   
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rgvtxtCurrentOdometer" 
                    runat="server"
                    ErrorMessage="The current odometer number between 1 and 200,000"
                     MinimumValue="1"  
                     MaximumValue="200000" 
                     Type="Double"      
                     Display="Dynamic"
                     CssClass="error" 
                     SetFocusOnError="True"
                     ControlToValidate="txtCurrentOdometer">
                </asp:RangeValidator>
        <br />



        <span class="mileageText">Previous Odometer reading:</span>
        <asp:TextBox ID="txtPreviousOdometer"  runat="server" Columns="10"></asp:TextBox>

        <span class="mileageUnits">Miles </span>

        <asp:RequiredFieldValidator ID="rqvtxtPreviousOdometer" runat="server"
            ErrorMessage="You must fill in the previous odometer field."
            ControlToValidate="txtPreviousOdometer"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"></asp:RequiredFieldValidator>

        <asp:RangeValidator ID="rgvtxtPreviousOdometer" runat="server"
            ErrorMessage="The previous odometer must be a whole number between 1 and 200,000."
            ControlToValidate="txtPreviousOdometer"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"
            MinimumValue="1"
            MaximumValue="200000"
            Type="Integer"></asp:RangeValidator>

        <asp:CompareValidator ID="cmvtxtPreviousOdometer" runat="server"
            ErrorMessage="The previous odometer mileage must be less than the current one."
            ControlToValidate="txtPreviousOdometer"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"
            Operator="LessThan"
            ControlToCompare="txtCurrentOdometer"
            Type="Integer"></asp:CompareValidator>
        <br />



        <span class="mileageText">Gas added to the tank:</span>
        <asp:TextBox ID="txtGasAdded" runat="server" Columns="10"></asp:TextBox>

        <span class="mileageUnits">Gallons </span>

        <asp:RequiredFieldValidator ID="rqvtxtGasAdded" runat="server"
            ErrorMessage="You must fill in the required gas added to the Tank field."
            ControlToValidate="txtGasAdded"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"></asp:RequiredFieldValidator>

        <asp:RangeValidator ID="rgvtxtGasAdded" runat="server"
            ErrorMessage="The amount of gallons of gas bought should be between 1 and 50."
            ControlToValidate="txtGasAdded"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"
            MinimumValue="1"
            MaximumValue="50"
            Type="Double"></asp:RangeValidator>
        <br />
         



        <span class="mileageText">Gas price:</span>
        <asp:TextBox ID="txtGasPrice" runat="server" Columns="10"></asp:TextBox>

        <span class="mileageUnits">$/Gallon </span>

        <asp:RequiredFieldValidator ID="rqvtxtGasPrice" runat="server"
            ErrorMessage="You must fill in the gas price field."
            ControlToValidate="txtGasPrice"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"></asp:RequiredFieldValidator>

        <asp:RangeValidator ID="rgvtxtGasPrice" runat="server"
            ErrorMessage="The price per gallon must be between 1 and 10."
            ControlToValidate="txtGasPrice"
            Display="Dynamic"
            CssClass="error"
            SetFocusOnError="true"
            MinimumValue="1"
            MaximumValue="10"
            Type="Double"></asp:RangeValidator>
        <br />
        <br />
        <br />



        <asp:LinkButton ID="lkbCalculate" runat="server" CssClass="button" OnClick="lkbCalculate_Click">Calculate</asp:LinkButton>


        <br />
        <br />
        <br />

        <div class="mileageResults">

            <asp:Literal ID="litMilesPerGallon" runat="server"></asp:Literal>
            <strong><asp:Label ID="lblMilesPerGallon" runat="server" Text=""></asp:Label></strong><br />


            <asp:Literal ID="litFillExpense" runat="server"></asp:Literal>
            <strong><asp:Label ID="lblFillExpense" runat="server" Text=""></asp:Label></strong><br />

            <asp:Literal ID="litMilesTraveled" runat="server"></asp:Literal>
            <strong><asp:Label ID="lblMilesTraveled" runat="server" Text=""></asp:Label></strong><br />

            <asp:Literal ID="litCostPerMile" runat="server"></asp:Literal>
            <strong><asp:Label ID="lblCostPerMile" runat="server" Text=""></asp:Label></strong>

        </div>

    </div>


</asp:Content>
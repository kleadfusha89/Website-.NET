<%@ Page Title="Klead F. (#45) - Project 1 - Body Mass Index Calculator" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project1.aspx.cs" Inherits="hex45_Project01" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Klead F. (#45) - Project 1 - Body Mass Index Calculator</h1>

    Enter your measurements:<br /><br />

    <asp:TextBox ID="txtFeet" runat="server" Columns="5"></asp:TextBox>
    <asp:Label ID="lblFeet" runat="server" Text="feet"></asp:Label>

    <asp:RequiredFieldValidator ID="rqvtxtFeet" runat="server" 
        ErrorMessage="Fill in a feet value."
        CssClass="error"
        Display="Dynamic"
        SetFocusOnError="True"
        ControlToValidate="txtFeet"
        ></asp:RequiredFieldValidator>

    <asp:RangeValidator ID="rgvtxtFeet" runat="server"
        ErrorMessage="Value must be between 3 feet and 7 feet 11 inches"
        CssClass="error"
        Display="Dynamic"
        SetFocusOnError="True"
        ControlToValidate="txtFeet"
        MinimumValue="3"
        MaximumValue="7"
        Type="Integer"
        ></asp:RangeValidator>


    <br />

    <asp:TextBox ID="txtInchesOrCm" runat="server" Columns="5"></asp:TextBox>
    <asp:Label ID="lblInchesOrCm" runat="server" Text="inches"></asp:Label>

    <asp:RequiredFieldValidator ID="rqvtxtInchesOrCm" runat="server" 
        ErrorMessage="Fill in an inch value."
        CssClass="error"
        Display="Dynamic"
        SetFocusOnError="True"
        ControlToValidate="txtInchesOrCm"
        ></asp:RequiredFieldValidator>

    <asp:RangeValidator ID="rgvtxtInchesOrCm" runat="server"
        ErrorMessage="Value must be between 3 feet and 7 feet 11 inches"
        CssClass="error"
        Display="Dynamic"
        SetFocusOnError="True"
        ControlToValidate="txtInchesOrCm"
        MinimumValue="0"
        MaximumValue="11"
        Type="Integer"
        ></asp:RangeValidator>



    <br />

    <asp:TextBox ID="txtPoundsOrKg" runat="server" Columns="5"></asp:TextBox>
    <asp:Label ID="lblPoundsOrKg" runat="server" Text="pounds"></asp:Label>

    <asp:RequiredFieldValidator ID="rqvtxtPoundsOrKg" runat="server"
        ErrorMessage="Fill in a pounds value."
        CssClass="error"
        Display="Dynamic"
        SetFocusOnError="True"
        ControlToValidate="txtPoundsOrKg"
        ></asp:RequiredFieldValidator>

    <asp:RangeValidator ID="rgvtxtPoundsOrKg" runat="server"
        ErrorMessage="Value must be between 50 and 600 pounds"
        CssClass="error"
        Display="Dynamic"
        SetFocusOnError="True"
        ControlToValidate="txtPoundsOrKg"
        MinimumValue="50"
        MaximumValue="600"
        Type="Integer"
        ></asp:RangeValidator>

    <br />

    <asp:RadioButtonList ID="rblUnits" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblUnits_SelectedIndexChanged">
        <asp:ListItem Selected="True">Imperial</asp:ListItem>
        <asp:ListItem>Metric</asp:ListItem>
    </asp:RadioButtonList>

    <br /><br />

    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" /> <br /><br /><br />

    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>


</asp:Content>


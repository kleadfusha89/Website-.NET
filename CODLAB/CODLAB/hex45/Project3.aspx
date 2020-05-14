<%@ Page Title="Klead F. (#45) - Project 3 - Chicago crimes" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project3.aspx.cs" Inherits="hex45_Project3" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Klead F. (#45) - Project 3 - Chicago crimes</h1>

    <asp:SqlDataSource ID="sqlPrimaryCrimeType" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PrimaryType] FROM [CrimesPrimaryTypesView] ORDER BY [PrimaryType]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlSecondaryCrimeType" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PrimaryType], [SecondaryType], [Iucr] FROM [CrimesSecondaryTypesView] WHERE ([PrimaryType] = @PrimaryType) ORDER BY [SecondaryType]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPrimaryCrimeType" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlWard" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
        SelectCommand="SELECT [PrimaryType], [Iucr], [WardId], [WardDesc] FROM [CrimesWardsView] WHERE (([Iucr] = @Iucr) AND ([PrimaryType] = @PrimaryType)) ORDER BY [WardId]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSecondaryCrimeType" PropertyName="SelectedValue" Name="Iucr" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ddlPrimaryCrimeType" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlChicagoCrimes" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [CaseNumber], [CrimeDt], [CrimeBlock], [Iucr], [LocationId], [ArrestedYN], [DomesticYN], [DistrictNum], [WardId], [Beat], [FbiCode], [Latitude], [Longitude] FROM [Crimes] WHERE (([WardId] = @WardId) AND ([Iucr] = @Iucr))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlWard" PropertyName="SelectedValue" Name="WardId" Type="Decimal"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ddlSecondaryCrimeType" PropertyName="SelectedValue" Name="Iucr" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <table>
        <tr>
            <td>Primary crime type:</td>
            <td>
                <asp:DropDownList ID="ddlPrimaryCrimeType" DataSourceID="sqlPrimaryCrimeType" AutoPostBack="true" runat="server" DataTextField="PrimaryType" DataValueField="PrimaryType" OnSelectedIndexChanged="ddlPrimaryCrimeType_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>Secondary crime type:</td>
            <td>
                <asp:DropDownList ID="ddlSecondaryCrimeType" runat="server" DataSourceID="sqlSecondaryCrimeType" AutoPostBack="true" DataTextField="SecondaryType" DataValueField="Iucr" OnSelectedIndexChanged="ddlSecondaryCrimeType_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>Ward</td>
            <td>
                <asp:DropDownList ID="ddlWard" runat="server" DataSourceID="sqlWard" DataTextField="WardDesc" AutoPostBack="true" DataValueField="WardId" OnSelectedIndexChanged="ddlWard_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>

    </table>


    <br /><br /><br />

    <asp:GridView ID="grdChicagoCrimes" CssClass="invoiceTable" runat="server" AutoGenerateColumns="False" DataKeyNames="CaseNumber" DataSourceID="sqlChicagoCrimes" PageSize="25" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="CaseNumber" HeaderText="Case #" SortExpression="CaseNumber" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="CrimeDt" HeaderText="Date" SortExpression="CrimeDt"></asp:BoundField>
            <asp:BoundField DataField="CrimeBlock" HeaderText="Block" SortExpression="CrimeBlock"></asp:BoundField>
            <asp:BoundField DataField="Iucr" HeaderText="IUCR" SortExpression="Iucr"></asp:BoundField>
            <asp:BoundField DataField="ArrestedYN" HeaderText="Arrest" SortExpression="ArrestedYN"></asp:BoundField>
            <asp:BoundField DataField="DomesticYN" HeaderText="Domestic" SortExpression="DomesticYN"></asp:BoundField>
            <asp:BoundField DataField="DistrictNum" HeaderText="District" SortExpression="DistrictNum"></asp:BoundField>
            <asp:BoundField DataField="Beat" HeaderText="Beat" SortExpression="Beat"></asp:BoundField>
            <asp:BoundField DataField="FbiCode" HeaderText="Fbi" SortExpression="FbiCode"></asp:BoundField>
            <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude"></asp:BoundField>
            <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude"></asp:BoundField>
        </Columns>
    </asp:GridView>



</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="PROJECT 3 TESTING.aspx.cs" Inherits="hex45_PROJECT_3_TESTING" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <table>

        <tr>
            <td>Primary crime type:</td>
            <td>
                <asp:DropDownList ID="ddlPrimaryCrime" runat="server"
                    DataSourceID="sqlPrimaryType"
                    DataTextField="PrimaryType"
                    AutoPostBack="true" OnSelectedIndexChanged="ddlPrimaryCrime_SelectedIndexChanged">
                </asp:DropDownList></td>

        </tr>



        <tr>
            <td>Secondary crime type:</td>
            <td>
                <asp:DropDownList ID="ddlSecondaryCrime" runat="server"
                    DataSourceID="sqlSecondaryType"
                    DataTextField="CrimeDesc"
                    DataValueField="Iucr"
                    AutoPostBack="true" OnSelectedIndexChanged="ddlSecondaryCrime_SelectedIndexChanged">
                </asp:DropDownList></td>


        </tr>

        <tr>
            <td>Ward: </td>
            <td>
            <asp:DropDownList ID="ddlWard" runat="server"
                DataSourceID="sqlWard"
                DataTextField="WardDesc"
                DataValueField="WardId"
                AutoPostBack="true" OnSelectedIndexChanged="ddlWard_SelectedIndexChanged">
            </asp:DropDownList>
            </td>
        </tr>





    </table>
    




    <asp:SqlDataSource ID="sqlPrimaryType" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PrimaryType] FROM [CrimesPrimaryTypesView] ORDER BY [PrimaryType]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlSecondaryType" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PrimaryType], [CrimeDesc], [Iucr], [SecondaryType] FROM [CrimesSecondaryTypesView] WHERE ([PrimaryType] = @PrimaryType) ORDER BY [SecondaryType]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPrimaryCrime" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlWard" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
        SelectCommand="SELECT [PrimaryType], [Iucr], [WardId], [WardDesc] FROM [CrimesWardsView] WHERE (([Iucr] = @Iucr) AND ([PrimaryType] = @PrimaryType)) ORDER BY [WardId]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSecondaryCrime" PropertyName="SelectedValue" Name="Iucr" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ddlPrimaryCrime" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="sqlChicagoCrimes" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [CaseNumber], [CrimeDt], [CrimeBlock], [Iucr], [ArrestedYN], [DomesticYN], [DistrictNum], [Beat], [FbiCode], [Latitude], [Longitude] FROM [Crimes] WHERE (([WardId] = @WardId) AND ([Iucr] = @Iucr))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlWard" PropertyName="SelectedValue" Name="WardId" Type="Decimal"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ddlSecondaryCrime" PropertyName="SelectedValue" Name="Iucr" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <br />

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


    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>


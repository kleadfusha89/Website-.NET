<%@ Page Title="Klead F. (#45) - Lab 7 - Database" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Lab07.aspx.cs" Inherits="hex45_Lab07" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>

<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <div>
        <h1>Klead F. (#45) - Lab 7 - Database</h1>

        <br /><br /><br />

        Enter a city and state:<br />

        City:
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revtxtCity" runat="server" 
            ControlToValidate="txtCity" 
            ErrorMessage="Please enter only letters (or spaces)."
            CssClass="error"
            SetFocusOnError="true"
            Display="Dynamic"
            ValidationExpression="[A-Za-z][A-Za-z ]*"
            ></asp:RegularExpressionValidator>

        <asp:RequiredFieldValidator ID="rqvtxtCity" runat="server" ErrorMessage="City required" Display="Dynamic" ControlToValidate="txtCity" CssClass="error"></asp:RequiredFieldValidator>


        <asp:XmlDataSource ID="xmlStates" runat="server" DataFile="Lab07States_hex45.xml"></asp:XmlDataSource>

        <br />
        State:
        <asp:DropDownList ID="ddlState" runat="server"
            DataSourceID="xmlStates"
            DataTextField="Text"
            DataValueField="Value"
            Width="180px"></asp:DropDownList>

        

        <br />

        <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click"/>

        <br /><br /><br />


        <asp:SqlDataSource ID="sqlZipCodes" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
            SelectCommand="SELECT [ZipCode], [Latitude], [Longitude], [City], [StateCode], [County], [ZipType] FROM [ZipCodes] WHERE (([StateCode] = @StateCode) AND ([City] LIKE '%' + @City + '%')) ORDER BY [City], [ZipCode], [County]">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlState" PropertyName="SelectedValue" Name="StateCode" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="txtCity" PropertyName="Text" Name="City" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>



        <asp:GridView ID="grdZipCodes" DataSourceID="sqlZipCodes" runat="server"
            AllowPaging="true" PageSize="20" AllowSorting="true"
            BorderStyle="Solid"

            AutoGenerateColumns="false"
            EmptyDataText="Nothing was found"
            HeaderStyle-BackColor="#75b1ce"
            RowStyle-BackColor="#509bc0"
            AlternatingRowStyle-BackColor="#5ca2c5"
            PagerStyle-BackColor="#75b1ce"
            HeaderStyle-ForeColor="Black"
            PagerStyle-HorizontalAlign="Center">

            <Columns>
                <asp:BoundField HeaderText="ZIP Code" DataField="ZipCode" SortExpression="ZipCode"></asp:BoundField>
                <asp:BoundField HeaderText="Latitude" DataField="Latitude" SortExpression="Latitude"></asp:BoundField>
                <asp:BoundField HeaderText="Longitude" DataField="Longitude" SortExpression="Longitude"></asp:BoundField>
                <asp:BoundField HeaderText="City" DataField="City" SortExpression="City"></asp:BoundField>
                <asp:BoundField HeaderText="State" DataField="StateCode" SortExpression="StateCode"></asp:BoundField>
                <asp:BoundField HeaderText="County" DataField="County" SortExpression="County"></asp:BoundField>
                <asp:BoundField HeaderText="Type" DataField="ZipType" SortExpression="ZipType"></asp:BoundField>

            </Columns>
        </asp:GridView>



    </div>
</asp:Content>


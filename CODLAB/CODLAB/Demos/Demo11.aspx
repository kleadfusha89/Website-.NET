<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo11.aspx.cs" Inherits="Demos_Demo11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #11 - Customers</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #11 - Customers</h1>
            <br /><br />

            <asp:SqlDataSource ID="sqlStates" runat="server" 
                ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [State], [StateFullName] FROM [States] ORDER BY [StateFullName]"></asp:SqlDataSource>
            <asp:DropDownList ID="ddlStates" DataSourceID="sqlStates" runat="server" DataTextField="StateFullName" DataValueField="State" AutoPostBack="true">
                
            </asp:DropDownList>

            <br /><br />

            
            <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
                SelectCommand="SELECT [CustomerID], [FirstName], [LastName], [City], [State], [ZipCode] FROM [Customers] WHERE ([State] = @State) ORDER BY [LastName], [FirstName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlStates" PropertyName="SelectedValue" DefaultValue="" Name="State" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdCustomers" runat="server" DataSourceID="sqlCustomers" 
                AllowPaging="true" PageSize="10" AllowSorting="true"
                
                AutoGenerateColumns="False" DataKeyNames="CustomerID">
                <PagerSettings Mode="NextPreviousFirstLast" />
                <HeaderStyle BackColor="Lime" />
                <RowStyle BackColor="#66FFF" />
                <AlternatingRowStyle BackColor="#FFFF99" />
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="ID" ReadOnly="True" SortExpression="CustomerID"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                    <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" SortExpression="ZipCode"></asp:BoundField>
                </Columns>
            </asp:GridView>





        </div>
    </form>
</body>
</html>

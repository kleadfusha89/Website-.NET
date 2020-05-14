<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo35c.aspx.cs" Inherits="Demos_Demo11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #35c - Customers w/Query String</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #35c - Customers w/Query String</h1>
            <br /><br />

            <ul>
                <li><a href="Demo35c.aspx?State=IL">Illinois</a></li>
                <li><a href="Demo35c.aspx?State=WI">Wisconsin</a></li>
                <li><a href="Demo35c.aspx?State=MI">Michigan</a></li>
                <li><a href="Demo35c.aspx?State=IA">Iowa</a></li>
                <li><a href="Demo35c.aspx?State=OH">Ohio</a></li>

            </ul>

            <br /><br />

            
            <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
                SelectCommand="SELECT [CustomerID], [FirstName], [LastName], [City], [State], [ZipCode] FROM [Customers] WHERE ([State] = @State)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="State" DefaultValue="IL" Name="State" Type="String"></asp:QueryStringParameter>

                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdCustomers" runat="server" DataSourceID="sqlCustomers"
                AllowPaging="true" AllowSorting="true"
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

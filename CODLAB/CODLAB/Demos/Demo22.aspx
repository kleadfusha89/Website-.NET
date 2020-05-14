<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo22.aspx.cs" Inherits="Demos_Demo22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #22 - Master Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #22 - Master Page</h1> 
            <br />
            <br />

            <asp:SqlDataSource ID="sqlEmployees" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [EmpID], [LastName], [FirstName], [EmployeeNbr] FROM [hex31Employees]"></asp:SqlDataSource>
            <asp:GridView ID="grdEmployees" runat="server" DataSourceID="sqlEmployees" AutoGenerateColumns="False" DataKeyNames="EmpID" AllowPaging="True" AllowSorting="True">
                <Columns>                    
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="EmployeeNbr" HeaderText="EmployeeNbr" SortExpression="EmployeeNbr"></asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFormatString="Demo22b.aspx?EmpId={0}" DataNavigateUrlFields="EmpId" HeaderText="&#160;" Text="Details"/>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

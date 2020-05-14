<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo16.aspx.cs" Inherits="Demos_Demo16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #16 - Stored Procedures</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #16 - Stored Procedures</h1>
            <br /><br />

            Employee ID:
            <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
            <br />

            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br />


            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <br /><br /><br />

            <asp:SqlDataSource ID="sqlEmployees" runat="server" 
                ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [EmpID], [LastName], [FirstName], [BirthDate], [SSN], [EmployeeNbr], [FullName] FROM [hex45Employees] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>

            <asp:GridView ID="grdEmployees" runat="server" DataSourceID="sqlEmployees" AutoGenerateColumns="False" DataKeyNames="EmpID">
                <Columns>
                    <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" InsertVisible="False" SortExpression="EmpID"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN"></asp:BoundField>
                    <asp:BoundField DataField="EmployeeNbr" HeaderText="EmployeeNbr" SortExpression="EmployeeNbr"></asp:BoundField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>

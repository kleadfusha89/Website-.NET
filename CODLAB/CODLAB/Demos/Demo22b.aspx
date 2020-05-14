<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo22b.aspx.cs" Inherits="Demos_Demo22b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #22b - Detail Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #22b - Detail Page</h1>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlEmployee" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [EmpID], [LastName], [FirstName], [BirthDate], [SSN], [EmployeeNbr], [FullName] FROM [hex31Employees] WHERE ([EmpID] = @EmpID)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="EmpID" Name="EmpID" Type="Decimal"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="dtvEmployee" runat="server" Height="50px" Width="125px" DataSourceID="sqlEmployee" AutoGenerateRows="False" DataKeyNames="EmpID">
                <Fields>                    
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN"></asp:BoundField>
                    <asp:BoundField DataField="EmployeeNbr" HeaderText="EmployeeNbr" SortExpression="EmployeeNbr"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
            
            <h2>Dependents</h2>
            <asp:SqlDataSource ID="sqlDependents" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [EmpID], [DependentNbr], [LastName], [FirstName], [BirthDate], [SSN], [FullName] FROM [hex31Dependents] WHERE ([EmpID] = @EmpID) ORDER BY [LastName], [FirstName]">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="EmpId" Name="EmpID" Type="Decimal"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdDependents" runat="server" DataSourceID="sqlDependents" AutoGenerateColumns="False" DataKeyNames="EmpID,DependentNbr">
                <Columns>                    
                    <asp:BoundField DataField="DependentNbr" HeaderText="DependentNbr" ReadOnly="True" SortExpression="DependentNbr"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN"></asp:BoundField>                    
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>

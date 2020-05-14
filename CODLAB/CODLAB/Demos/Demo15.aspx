<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo15.aspx.cs" Inherits="Demos_Demo15" %>

<!DOCTYPE html [
    <!ENTITY nbsp "&#160;">

]>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #15 - Grid w/Update</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #15 - Grid w/Update</h1>

            <asp:SqlDataSource ID="sqlEmployees" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [EmpID], [LastName], [FirstName], [BirthDate], [SSN], [EmployeeNbr], [FullName] FROM [hex45Employees] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>




            <asp:DropDownList ID="ddlEmployees" runat="server" 
                DataSourceID="sqlEmployees" 
                DataValueField="EmpId"
                DataTextField="LastName"
                AutoPostBack="true"></asp:DropDownList>

            <br /><br />


            <asp:SqlDataSource ID="sqlDependents" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                DeleteCommand="DELETE FROM [hex44Dependents] WHERE [EmpID] = @EmpID AND [DependentNbr] = @DependentNbr" InsertCommand="INSERT INTO [hex44Dependents] ([EmpID], [DependentNbr], [LastName], [FirstName], [BirthDate], [SSN], [FullName]) VALUES (@EmpID, @DependentNbr, @LastName, @FirstName, @BirthDate, @SSN, @FullName)" SelectCommand="SELECT [EmpID], [DependentNbr], [LastName], [FirstName], [BirthDate], [SSN], [FullName] FROM [hex44Dependents] WHERE ([EmpID] = @EmpID) ORDER BY [LastName], [FirstName]" UpdateCommand="UPDATE [hex44Dependents] SET [LastName] = @LastName, [FirstName] = @FirstName, [BirthDate] = @BirthDate, [SSN] = @SSN, [FullName] = @FullName WHERE [EmpID] = @EmpID AND [DependentNbr] = @DependentNbr">
                <DeleteParameters>
                    <asp:Parameter Name="EmpID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="DependentNbr" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="DependentNbr" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="BirthDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="SSN" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlEmployees" PropertyName="SelectedValue" Name="EmpID" Type="Decimal"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="BirthDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="SSN" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="EmpID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="DependentNbr" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="grdDependents" runat="server" DataSourceID="sqlDependents" AutoGenerateColumns="False" DataKeyNames="EmpID,DependentNbr">
                <Columns>
                    <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" HeaderText="&#160;"/>
                    
                    <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID"></asp:BoundField>
                    <asp:BoundField DataField="DependentNbr" HeaderText="DependentNbr" ReadOnly="True" SortExpression="DependentNbr"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN"></asp:BoundField>
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName"></asp:BoundField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>

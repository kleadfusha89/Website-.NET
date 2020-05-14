﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo66.aspx.cs" Inherits="Demos_Demo66" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #66 - Number of Dependents Chart</title>
 </head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #66 - Number of Dependents Chart</h1>
            <br />
            <br />
            <br />

            <asp:SqlDataSource ID="sqlEmpDep" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [EmpId], [Initials], [DepCount] FROM [hex45EmpDepCountView] ORDER BY [EmpId]"></asp:SqlDataSource>


            <asp:Chart ID="chtEmpDep" runat="server" DataSourceID="sqlEmpDep" Width="600px" Height="400px" BackImageWrapMode="Unscaled">
                <Series>
                    <asp:Series Name="Dependents" XValueMember="Initials" YValueMembers="DepCount"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>


            <br />
            <br />
            <br />
            <asp:GridView ID="grdEmpDep" runat="server" DataSourceID="sqlEmpDep" AutoGenerateColumns="False" DataKeyNames="EmpId">
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId"></asp:BoundField>
                    <asp:BoundField DataField="Initials" HeaderText="Initials" SortExpression="Initials"></asp:BoundField>
                    <asp:BoundField DataField="DepCount" HeaderText="DepCount" SortExpression="DepCount"></asp:BoundField>
                </Columns>
            </asp:GridView>




        </div>
    </form>
</body>
</html>

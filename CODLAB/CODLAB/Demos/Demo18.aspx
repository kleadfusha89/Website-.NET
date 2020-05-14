<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo18.aspx.cs" Inherits="Demos_Demo18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #18 - Repeater control</title>
    <style type="text/css">
        table {
            border-width: 1px;
            border-spacing: 0px;
            border-style: outset;
            border-color: #cccccc;
            border-collapse: separate;
            background-color: #ffffff;
        }
        table th {
            border-width: 1px;
            border-spacing: 0px;
            padding: 3px;
            border-style: inset;
            border-color: #444444;
            background-color: #e1d5bd;
        }
        table td {
            border-width: thin;
            padding: 3px;
            border-style: inset;
            border-color: #cccccc;
        }
        table tr.alt {
            background-color: #e1d5db;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #18 - Repeater control</h1>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlEmployees" runat="server" 
                ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [EmpID], [LastName], [FirstName], [BirthDate], [SSN], [EmployeeNbr], [FullName] FROM [hex45Employees] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>


            <asp:Repeater ID="rptEmployees" runat="server" DataSourceID="sqlEmployees">

                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Birth Date</th>
                        </tr>
                </HeaderTemplate>


                <ItemTemplate>
                    <tr>
                        <td><%# Convert.ToString(DataBinder.Eval(Container.DataItem, "EmpID")) %></td>
                        <td><%# Convert.ToString(DataBinder.Eval(Container.DataItem, "FirstName"))%>
                            <%# Convert.ToString(DataBinder.Eval(Container.DataItem, "LastName"))%>
                            </td>
                        <td><%# Convert.ToString(DataBinder.Eval(Container.DataItem, "BirthDate"))%></td>
                    </tr>
                </ItemTemplate>

                <AlternatingItemTemplate>
                    <tr class="alt">
                        <td><%# Convert.ToString(DataBinder.Eval(Container.DataItem, "EmpID")) %></td>
                        <td><%# Convert.ToString(DataBinder.Eval(Container.DataItem, "FirstName"))%>
                            <%# Convert.ToString(DataBinder.Eval(Container.DataItem, "LastName"))%>
                        </td>
                        <td><%# Convert.ToString(DataBinder.Eval(Container.DataItem, "BirthDate"))%></td>
                    </tr>
                </AlternatingItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>


            </asp:Repeater>






        </div>
    </form>
</body>
</html>

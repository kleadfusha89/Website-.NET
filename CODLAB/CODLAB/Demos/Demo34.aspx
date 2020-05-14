<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo34.aspx.cs" Inherits="Demos_Demo34" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo 34 - Repeater Control w/Item Data Bound Event</title>

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
            <h1>Demo 34 - Repeater Control w/Item Data Bound Event</h1>
            <br /><br /><br />
                       

            Number of employees:
            <strong><asp:Literal ID="litNumberOfEmployees" runat="server"></asp:Literal></strong>
            
            <br /><br /><br />

            <asp:SqlDataSource ID="sqlEmployees" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT * FROM [hex45Employees] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>
            <asp:Repeater ID="rptEmployees" runat="server" DataSourceID="sqlEmployees" OnItemDataBound="rptEmployees_ItemDataBound">
                <HeaderTemplate>
                    <table>

                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Birth Date</th>
                            
                        </tr>
                   

                </HeaderTemplate>

                

                <ItemTemplate>
                    <tr<asp:Literal ID="litRowClass" runat="server"></asp:Literal>>
                        <td>
                            <asp:Literal ID="litEmpId" runat="server">AAA</asp:Literal></td>
                        <td><asp:Literal ID="litName" runat="server">BBB</asp:Literal></td>
                        <td><asp:Literal ID="litBirthDate" runat="server">CCC</asp:Literal></td>

                    </tr>


                </ItemTemplate>


                <FooterTemplate>

                     </table>
                </FooterTemplate>

            </asp:Repeater>

            
        </div>
    </form>
</body>
</html>

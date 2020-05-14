<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo24.aspx.cs" Inherits="Demos_Demo24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #24 - Request Object</title>
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
            background-color: #e1d5bd; /* from the footer image */
        }
        table td {
            border-width: thin;
            padding: 3px;
            border-style: inset;
            border-color: #cccccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #24 - Request Object</h1>
            <br />
            <br />

            <table class="table1">
                <tr>
                    <th>Key</th>
                    <th>Value</th>
                </tr>
                <asp:Literal ID="litRequest" runat="server"></asp:Literal>



            </table>


        </div>
    </form>
</body>
</html>

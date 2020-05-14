<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo46.aspx.cs" Inherits="Demos_Demos46" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #46 - Response.Write()</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #46 - Response.Write()</h1>

            <p>


                <% 
                    int a = 6;
                    int b = 7;
                    Response.Write(a + b);

                %>
            </p>

            <p>
                <%
                    for (int i = 1; i <= 20; i++)
                    {
                        Response.Write(i);
                    }    
                    

                %>
            </p>


            <asp:Button ID="btnClickMe" runat="server" Text="Click Me" OnClick="btnClickMe_Click" />
            <asp:Button ID="btnDoNotClickMe" runat="server" Text="Do Not Click Me" OnClick="btnDoNotClickMe_Click" />
            <asp:Button ID="btnDoNothing" runat="server" Text="Nothing" />
            

        </div>
    </form>
</body>
</html>

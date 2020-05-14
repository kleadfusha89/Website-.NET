<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo36c.aspx.cs" Inherits="Demos_Demo36c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #36c - View Cookies</title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #36c - View Cookies</h1>
            <br /><br />

            Your zip code is: 
            <strong><asp:Literal ID="litZipCode" runat="server"></asp:Literal></strong>
            <br /><br />

            <asp:HyperLink ID="hypWeather" runat="server">Click here to see weather in your area.</asp:HyperLink>
            <br /><br />

            <asp:SqlDataSource ID="sqlZipCode" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [ZipCode], [Latitude], [Longitude], [City], [StateCode], [County], [ZipType] FROM [ZipCodes] WHERE ([ZipCode] = @ZipCode)">
                <SelectParameters>
                    <asp:CookieParameter CookieName="ZipCode" Name="ZipCode" Type="String"></asp:CookieParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdZipCode" runat="server" DataSourceID="sqlZipCode" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode"></asp:BoundField>
                    <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude"></asp:BoundField>
                    <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode"></asp:BoundField>
                    <asp:BoundField DataField="County" HeaderText="County" SortExpression="County"></asp:BoundField>
                    <asp:BoundField DataField="ZipType" HeaderText="ZipType" SortExpression="ZipType"></asp:BoundField>
                </Columns>
            </asp:GridView>

            <br /><br /><br />

            

            Your favorite color is:<br />
            <div style="padding: 50px;">
                <table style="background-color:"<asp:Literal ID="litFavColor" runat="server"></asp:Literal>">

                    <tr>




                    </tr>




                </table>








            </div>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo67.aspx.cs" Inherits="Demos_Demo67" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #67 - Zip Codes Chart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #67 - Zip Codes Chart</h1>
            <br />
            <br />
            <br />

            <asp:SqlDataSource ID="sqlStates" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [State], [StateFullName] FROM [States] ORDER BY [StateFullName]"></asp:SqlDataSource>
            
            <asp:DropDownList ID="ddlStates" runat="server" 
                DataSourceID="sqlStates" 
                DataTextField="StateFullName" 
                DataValueField="State" 
                AutoPostBack="true"></asp:DropDownList>




            <asp:SqlDataSource ID="sqlCounties" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [StateCode], [County], [Zips], [Cities], [Latitude], [Longitude] FROM [ZipCodesCountiesView] WHERE ([StateCode] = @StateCode) ORDER BY [County]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlStates" PropertyName="SelectedValue" Name="StateCode" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>


            <br /><hr /><br />

            <asp:Chart ID="chtCountiesColumnar" runat="server" DataSourceID="sqlCounties" 
                Width="900px" Height="500px" BackColor="0, 64, 64" BackGradientStyle="LeftRight"
                >
                <Series>
                    <asp:Series Name="Zip Code" XValueMember="County" YValueMembers="Zips"></asp:Series>
                    <asp:Series Name="Cities" XValueMember="County" YValueMembers="Cities"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="true"></asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="false" Name="Default" LegendStyle="Row"></asp:Legend>

                </Legends>
            </asp:Chart>


            <br /><br />
            <hr />
            <br /><br />


            <asp:Chart ID="chtCountiesPie" runat="server" DataSourceID="sqlCounties" Width="1200px" Height="600px">
                <Series>
                    <asp:Series Name="Zips" XValueMember="County" YValueMembers="Zips" ChartType="Pie"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="true"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

            <br /><br />

            <asp:GridView ID="grdCounties" runat="server" DataSourceID="sqlCounties" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode"></asp:BoundField>
                    <asp:BoundField DataField="County" HeaderText="County" SortExpression="County"></asp:BoundField>
                    <asp:BoundField DataField="Zips" HeaderText="Zips" SortExpression="Zips"></asp:BoundField>
                    <asp:BoundField DataField="Cities" HeaderText="Cities" SortExpression="Cities"></asp:BoundField>
                    <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude"></asp:BoundField>
                    <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude"></asp:BoundField>
                </Columns>
            </asp:GridView>


        </div>
    </form>
</body>
</html>

<%@ Page Title="Lab 10 (#45) - Crime Data" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Lab10.aspx.cs" Inherits="hex45_Lab10" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Lab 10 (#45) - Crime Data</h1>
    <br />

    <asp:RadioButtonList ID="rblCharts" runat="server" OnSelectedIndexChanged="rblCharts_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem Selected="True" Value="PieChart">Pie Chart</asp:ListItem>
        <asp:ListItem Value="ColumnChart">Column Chart</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />


    <asp:MultiView ID="mvwCharts" runat="server" ActiveViewIndex="0">
        <asp:View ID="viwPieCharts" runat="server">

            <asp:SqlDataSource ID="sqlWards" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [WardId] FROM [WardOffices] ORDER BY [WardId]"></asp:SqlDataSource>

            Ward:
            <asp:DropDownList ID="ddlWard" runat="server" DataSourceID="sqlWards" DataTextField="WardId" AutoPostBack="true"></asp:DropDownList>
            <br /><br />

            <asp:SqlDataSource ID="sqlCrimeTypeByWardView" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [WardId], [PrimaryType], [CrimeCount] FROM [CrimeTypeByWardView] WHERE ([WardId] = @WardId) ORDER BY [CrimeCount]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlWard" PropertyName="SelectedValue" Name="WardId" Type="Decimal"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Chart ID="chtCrimeTypeByWardView" runat="server" DataSourceID="sqlCrimeTypeByWardView" 
                Width="600px" Height="400px">
                <Series>
                    <asp:Series Name="Series" ChartType="Pie" XValueMember="PrimaryType" YValueMembers="CrimeCount" IsValueShownAsLabel="False"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="true">
                        <Area3DStyle Enable3D="True" />
                    </asp:ChartArea>
                </ChartAreas>
                
                <BorderSkin BackColor="Gainsboro" BackGradientStyle="TopBottom" BackHatchStyle="Cross" BackImageTransparentColor="Highlight" PageColor="Transparent" />
                
            </asp:Chart>

        </asp:View>









        <asp:View ID="viwColumnCharts" runat="server">
            <asp:SqlDataSource ID="sqlCrimeType" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PrimaryType] FROM [CrimesPrimaryTypesView] ORDER BY [PrimaryType]"></asp:SqlDataSource>

            Primary Crime Type:
            <asp:DropDownList ID="ddlCrimeType" runat="server" DataSourceID="sqlCrimeType" AutoPostBack="true" DataTextField="PrimaryType"></asp:DropDownList>
            <br />
            <br />

            <asp:SqlDataSource ID="sqlCrimesByWard" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PrimaryType], [Q1], [Q2], [Q3], [Q4], [WardId] FROM [CrimesByWardPerQuarterView] WHERE ([PrimaryType] = @PrimaryType)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCrimeType" PropertyName="SelectedValue" Name="PrimaryType" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Chart ID="chtCrimesByWard" runat="server" DataSourceID="sqlCrimesByWard" 
                Width="600px" Height="400px" BackColor="#CCCCCC" BackGradientStyle="LeftRight">
                <Series>
                    <asp:Series Name="Quarter1" XValueMember="WardId" YValueMembers="Q1"></asp:Series>
                    <asp:Series Name="Quarter2" XValueMember="WardId" YValueMembers="Q2"></asp:Series>
                    <asp:Series Name="Quarter3" XValueMember="WardId" YValueMembers="Q3"></asp:Series>
                    <asp:Series Name="Quarter4" XValueMember="WardId" YValueMembers="Q4"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="true"></asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="false" Name="Default" LegendStyle="Row"></asp:Legend>
                </Legends>
            </asp:Chart>

        </asp:View>











    </asp:MultiView>


</asp:Content>


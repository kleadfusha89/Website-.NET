<%@ Page Title="Project 5 (#45) - View Teams" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project5View.aspx.cs" Inherits="hex45_Project5View" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">

    <div>
    <h1>Project 5 (#45) - View Teams</h1>
    <br />
    
    

    <asp:ImageButton ID="ibnPlayer" runat="server" AlternateText="Player" OnClick="ibnPlayer_Click" ImageUrl="~/hex45/images/p5Players.png" />
    <asp:ImageButton ID="ibnTeam" runat="server" AlternateText="Team" OnClick="ibnTeam_Click" ImageUrl="~/hex45/images/p5Teams.png" />
    <br /><br />

    <asp:MultiView ID="mvwDisplay" runat="server" ActiveViewIndex="0">

        <asp:View ID="viwEmpty" runat="server">
            <br />
            Select one of the options!
        </asp:View>

        <asp:View ID="viwPlayers" runat="server">
           

            <asp:SqlDataSource ID="sqlPlayersPosition" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT DISTINCT [Position] FROM [hex45Players] ORDER BY [Position]"></asp:SqlDataSource>

            Position:
            <asp:DropDownList ID="ddlPlayers" runat="server" DataSourceID="sqlPlayersPosition" DataTextField="Position" AutoPostBack="True" DataValueField="Position"></asp:DropDownList>

            <br /><br />

            <asp:SqlDataSource ID="sqlPlayersFilteredByPosition" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [TeamName], [LastName], [FirstName], [Nationality], [Position], [JerseyNumber] FROM [hex45Players] WHERE ([Position] = @Position) ORDER BY [LastName], [FirstName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlPlayers" PropertyName="SelectedValue" Name="Position" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdPlayersFilteredByPosition" runat="server" DataSourceID="sqlPlayersFilteredByPosition" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="TeamName" HeaderText="Team" SortExpression="TeamName"></asp:BoundField>
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality"></asp:BoundField>
                    <asp:BoundField DataField="JerseyNumber" HeaderText="Jersey #" SortExpression="JerseyNumber"></asp:BoundField>
                </Columns>
            </asp:GridView>


            <br />

            Nationality:
            
            <asp:SqlDataSource ID="sqlPlayersNationality" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT DISTINCT [Nationality] FROM [hex45Players] ORDER BY [Nationality]"></asp:SqlDataSource>

            <asp:DropDownList ID="ddlPlayersNationality" runat="server" AutoPostBack="true" DataSourceID="sqlPlayersNationality" DataTextField="Nationality" DataValueField="Nationality"></asp:DropDownList>

            <br /><br />
            <asp:SqlDataSource ID="sqlPlayersFilteredByNationality" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [TeamName], [LastName], [FirstName], [Position], [JerseyNumber] FROM [hex45Players] WHERE ([Nationality] = @Nationality) ORDER BY [LastName], [FirstName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlPlayersNationality" PropertyName="SelectedValue" Name="Nationality" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="grdPlayersFilteredByNationality" runat="server" DataSourceID="sqlPlayersFilteredByNationality" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="TeamName" HeaderText="Team" SortExpression="TeamName"></asp:BoundField>
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position"></asp:BoundField>
                    <asp:BoundField DataField="JerseyNumber" HeaderText="Jersey #" SortExpression="JerseyNumber"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
            <a href="Project5.aspx">Main Menu</a>
        </asp:View>




        <asp:View ID="viwTeams" runat="server">

            <asp:SqlDataSource ID="sqlSoccerTeam" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                               SelectCommand="SELECT [TeamName] FROM [hex45SoccerTeam] ORDER BY [TeamName]"></asp:SqlDataSource>


            Soccer Team:
            <asp:DropDownList ID="ddlSoccerTeam" runat="server" DataSourceID="sqlSoccerTeam" DataTextField="TeamName" AutoPostBack="true"></asp:DropDownList>

            <br />
            <br />
           

            <asp:ImageButton ID="ibnTeamGeneral" runat="server" AlternateText="General Info" OnClick="ibnTeamGeneral_Click"  ImageUrl="~/hex45/images/soccerTeamInfo.png" />
            <asp:ImageButton ID="ibnTeamPlayers" runat="server" AlternateText="Team Players" OnClick="ibnTeamPlayers_Click" ImageUrl="~/hex45/images/soccerTeamPlayers.png" />
            <asp:ImageButton ID="ibnTeamFixtures" runat="server" AlternateText="Team Fixtures" OnClick="ibnTeamFixtures_Click" ImageUrl="~/hex45/images/soccerTeamFixtures.png" />



            <br /><br />


            <asp:SqlDataSource ID="sqlTeamInformation" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [TeamName], [City], [LeagueName], [LeagueTrophies], [InternationalTrophies], [CurrentPosition] FROM [hex45SoccerTeam] WHERE ([TeamName] = @TeamName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSoccerTeam" PropertyName="SelectedValue" Name="TeamName" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdInformation" runat="server" CssClass="invoiceTable" DataSourceID="sqlTeamInformation" AutoGenerateColumns="False" DataKeyNames="TeamName" AllowPaging="True" AllowSorting="True" Visible="false" PagerStyle-Wrap="True">
                <Columns>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="LeagueName" HeaderText="League Name" SortExpression="LeagueName"></asp:BoundField>
                    <asp:BoundField DataField="LeagueTrophies" HeaderText="League Trophies" SortExpression="LeagueTrophies"></asp:BoundField>
                    <asp:BoundField DataField="InternationalTrophies" HeaderText="International Trophies" SortExpression="InternationalTrophies"></asp:BoundField>
                    <asp:BoundField DataField="CurrentPosition" HeaderText="Current Position" SortExpression="CurrentPosition"></asp:BoundField>
                </Columns>
            </asp:GridView>

           



            <asp:SqlDataSource ID="sqlTeamPlayers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [PlayerID], [TeamName], [LastName], [FirstName], [Nationality], [Position], [JerseyNumber] FROM [hex45Players] WHERE ([TeamName] = @TeamName) ORDER BY [LastName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSoccerTeam" PropertyName="SelectedValue" Name="TeamName" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdPlayers" runat="server" DataSourceID="sqlTeamPlayers" AutoGenerateColumns="False" DataKeyNames="PlayerID" AllowSorting="True" AllowPaging="True" Visible="false">
                <Columns>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality"></asp:BoundField>
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position"></asp:BoundField>
                    <asp:BoundField DataField="JerseyNumber" HeaderText="Jersey #" SortExpression="JerseyNumber"></asp:BoundField>
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="sqlTeamFixtures" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [DtScheduled], [TeamName], [Against], [Competition], [WeekNumber] FROM [hex45Fixtures] WHERE ([TeamName] = @TeamName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSoccerTeam" PropertyName="SelectedValue" Name="TeamName" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdFixtures" runat="server" DataSourceID="sqlTeamFixtures" AutoGenerateColumns="False" AllowSorting="True" AllowPaging="True" Visible="false">
                <Columns>
                    <asp:BoundField DataField="TeamName" HeaderText="Home Team" SortExpression="TeamName"></asp:BoundField>
                    <asp:BoundField DataField="Against" HeaderText="Away Team" SortExpression="Against"></asp:BoundField>
                    <asp:BoundField DataField="Competition" HeaderText="Competition" SortExpression="Competition"></asp:BoundField>
                    <asp:BoundField DataField="WeekNumber" HeaderText="Week #" SortExpression="WeekNumber"></asp:BoundField>
                    <asp:BoundField DataField="DtScheduled" HeaderText="Date" SortExpression="DtScheduled"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
            <a href="Project5.aspx">Main Menu</a>
        </asp:View>







    </asp:MultiView>


    
    
    

  
    

    </div>
</asp:Content>


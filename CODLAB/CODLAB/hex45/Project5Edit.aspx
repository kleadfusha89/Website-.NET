<%@ Page Title="Project 5 (#45) - Edit Teams" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project5Edit.aspx.cs" Inherits="hex45_Project5Edit" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Project 5 (#45) - Edit Teams</h1>
    <br /><br />

    <asp:ImageButton ID="ibnAddNewTeam" runat="server" AlternateText="Add New Team" ImageUrl="~/hex45/images/p5AddNewTeamSelected.png" OnClick="ibnAddNewTeam_Click" />
    <asp:ImageButton ID="ibnAddNewPlayer" runat="server" AlternateText="Add New Player" ImageUrl="~/hex45/images/p5AddNewPlayer.png" OnClick="ibnAddNewPlayer_Click" />
    <asp:ImageButton ID="ibnUpdateFixture" runat="server" AlternateText="Update Fixture" ImageUrl="~/hex45/images/p5UpdateFixture.png" OnClick="ibnUpdateFixture_Click" />
    <br />
    <br />

    <asp:SqlDataSource ID="sqlTeams" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT DISTINCT [TeamName] FROM [hex45SoccerTeam] ORDER BY [TeamName]"></asp:SqlDataSource>


    <asp:MultiView ID="mvwEditTeams" runat="server" ActiveViewIndex="0">

        <asp:View ID="viwAddNewTeam" runat="server">

          
            <br />

            <asp:SqlDataSource ID="sqlAddNewTeam" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                DeleteCommand="DELETE FROM [hex45SoccerTeam] WHERE [TeamName] = @TeamName" 
                InsertCommand="INSERT INTO [hex45SoccerTeam] ([TeamName], [City], [LeagueName], [LeagueTrophies], [InternationalTrophies], [CurrentPosition]) VALUES (@TeamName, @City, @LeagueName, @LeagueTrophies, @InternationalTrophies, @CurrentPosition)" 
                SelectCommand="SELECT [TeamName], [City], [LeagueName], [LeagueTrophies], [InternationalTrophies], [CurrentPosition] FROM [hex45SoccerTeam]" 
                UpdateCommand="UPDATE [hex45SoccerTeam] SET [City] = @City, [LeagueName] = @LeagueName, [LeagueTrophies] = @LeagueTrophies, [InternationalTrophies] = @InternationalTrophies, [CurrentPosition] = @CurrentPosition WHERE [TeamName] = @TeamName">
                <DeleteParameters>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LeagueName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LeagueTrophies" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="InternationalTrophies" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="CurrentPosition" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LeagueName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LeagueTrophies" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="InternationalTrophies" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="CurrentPosition" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:DetailsView ID="dtvAddNewTeam" runat="server" Height="50px" Width="125px" DataSourceID="sqlAddNewTeam" DataKeyNames="TeamName" DefaultMode="Insert">
                <Fields>
                    <asp:CommandField ShowInsertButton="True"></asp:CommandField>
                </Fields>
            </asp:DetailsView>




        </asp:View>




        <asp:View ID="viwAddNewPlayer" runat="server">

            Add new player:
            <br /><br />
            <asp:SqlDataSource ID="sqlAddNewPlayer" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [hex45Players] WHERE [PlayerID] = @PlayerID" InsertCommand="INSERT INTO [hex45Players] ([PlayerID], [TeamName], [LastName], [FirstName], [Nationality], [Position], [JerseyNumber]) VALUES (@PlayerID, @TeamName, @LastName, @FirstName, @Nationality, @Position, @JerseyNumber)" SelectCommand="SELECT [PlayerID], [TeamName], [LastName], [FirstName], [Nationality], [Position], [JerseyNumber] FROM [hex45Players]" UpdateCommand="UPDATE [hex45Players] SET [TeamName] = @TeamName, [LastName] = @LastName, [FirstName] = @FirstName, [Nationality] = @Nationality, [Position] = @Position, [JerseyNumber] = @JerseyNumber WHERE [PlayerID] = @PlayerID">
                <DeleteParameters>
                    <asp:Parameter Name="PlayerID" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlayerID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Nationality" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Position" Type="String"></asp:Parameter>
                    <asp:Parameter Name="JerseyNumber" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Nationality" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Position" Type="String"></asp:Parameter>
                    <asp:Parameter Name="JerseyNumber" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="PlayerID" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:DetailsView ID="dtvAddNewPlayer" runat="server" Height="50px" Width="235px" DataSourceID="sqlAddNewPlayer" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="PlayerID">
                <Fields>
                    <asp:BoundField DataField="PlayerID" HeaderText="Player ID" SortExpression="PlayerID"></asp:BoundField>
                    
                    
                    <asp:TemplateField HeaderText="Team">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlTeams" runat="server" DataSourceID="sqlTeams" DataTextField="TeamName" AutoPostBack="True" Text='<%# Bind("TeamName") %>'></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblTeamName" runat="server" Text='<%# Bind("TeamName") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    
                    




                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality"></asp:BoundField>
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position"></asp:BoundField>
                    <asp:BoundField DataField="JerseyNumber" HeaderText="Jersey #" SortExpression="JerseyNumber"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True"></asp:CommandField>
                </Fields>
            </asp:DetailsView>

            <br />
            
            Select Team from which you want to edit Player:

            <asp:DropDownList ID="ddlTeam" runat="server" AutoPostBack="True" DataSourceID="sqlTeams" DataTextField="TeamName" DataValueField="TeamName"></asp:DropDownList>
            <br /><br />
            <asp:SqlDataSource ID="sqlEditPlayer" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [hex45Players] WHERE [PlayerID] = @PlayerID" InsertCommand="INSERT INTO [hex45Players] ([PlayerID], [TeamName], [LastName], [FirstName], [Nationality], [Position], [JerseyNumber]) VALUES (@PlayerID, @TeamName, @LastName, @FirstName, @Nationality, @Position, @JerseyNumber)" SelectCommand="SELECT [PlayerID], [TeamName], [LastName], [FirstName], [Nationality], [Position], [JerseyNumber] FROM [hex45Players] WHERE ([TeamName] = @TeamName) ORDER BY [LastName], [FirstName]" UpdateCommand="UPDATE [hex45Players] SET [TeamName] = @TeamName, [LastName] = @LastName, [FirstName] = @FirstName, [Nationality] = @Nationality, [Position] = @Position, [JerseyNumber] = @JerseyNumber WHERE [PlayerID] = @PlayerID">
                <DeleteParameters>
                    <asp:Parameter Name="PlayerID" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlayerID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Nationality" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Position" Type="String"></asp:Parameter>
                    <asp:Parameter Name="JerseyNumber" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlTeam" PropertyName="SelectedValue" Name="TeamName" Type="String"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Nationality" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Position" Type="String"></asp:Parameter>
                    <asp:Parameter Name="JerseyNumber" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="PlayerID" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdEditPlayer" runat="server" DataSourceID="sqlEditPlayer" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PlayerID">
                <Columns>
                    <asp:CommandField ShowEditButton="True"></asp:CommandField>
                    <asp:BoundField DataField="PlayerID" HeaderText="PlayerID" ReadOnly="True" SortExpression="PlayerID"></asp:BoundField>
                    <asp:TemplateField HeaderText="Team" HeaderStyle-ForeColor="Blue">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlTeams" runat="server" DataSourceID="sqlTeams" DataTextField="TeamName" AutoPostBack="True" Text='<%# Bind("TeamName") %>'></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblTeamName" runat="server" Text='<%# Bind("TeamName") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality"></asp:BoundField>
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position"></asp:BoundField>
                    <asp:BoundField DataField="JerseyNumber" HeaderText="Jersey #" SortExpression="JerseyNumber"></asp:BoundField>
                </Columns>
            </asp:GridView>
        </asp:View>






        <asp:View ID="viwUpdateFixtures" runat="server">

            <asp:SqlDataSource ID="sqlUpdateFixtures" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' DeleteCommand="DELETE FROM [hex45Fixtures] WHERE [MatchID] = @MatchID" InsertCommand="INSERT INTO [hex45Fixtures] ([MatchID], [DtScheduled], [TeamName], [Against], [Competition], [WeekNumber]) VALUES (@MatchID, @DtScheduled, @TeamName, @Against, @Competition, @WeekNumber)" SelectCommand="SELECT [MatchID], [DtScheduled], [TeamName], [Against], [Competition], [WeekNumber] FROM [hex45Fixtures] ORDER BY [MatchID]" UpdateCommand="UPDATE [hex45Fixtures] SET [DtScheduled] = @DtScheduled, [TeamName] = @TeamName, [Against] = @Against, [Competition] = @Competition, [WeekNumber] = @WeekNumber WHERE [MatchID] = @MatchID">
                <DeleteParameters>
                    <asp:Parameter Name="MatchID" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MatchID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DtScheduled"></asp:Parameter>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Against" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Competition" Type="String"></asp:Parameter>
                    <asp:Parameter Name="WeekNumber" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="DtScheduled"></asp:Parameter>
                    <asp:Parameter Name="TeamName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Against" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Competition" Type="String"></asp:Parameter>
                    <asp:Parameter Name="WeekNumber" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="MatchID" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="grdUpdateFixtures" runat="server" DataSourceID="sqlUpdateFixtures" AutoGenerateColumns="False" DataKeyNames="MatchID" AllowSorting="True" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True"></asp:CommandField>
                    <asp:BoundField DataField="MatchID" HeaderText="Match ID" ReadOnly="True" SortExpression="MatchID"></asp:BoundField>
                    <asp:BoundField DataField="DtScheduled" HeaderText="Date" SortExpression="DtScheduled"></asp:BoundField>
                    <asp:BoundField DataField="TeamName" HeaderText="Home Team" SortExpression="TeamName"></asp:BoundField>
                    <asp:BoundField DataField="Against" HeaderText="Away Team" SortExpression="Against"></asp:BoundField>
                    <asp:BoundField DataField="Competition" HeaderText="Competition" SortExpression="Competition"></asp:BoundField>
                    <asp:BoundField DataField="WeekNumber" HeaderText="Week #" SortExpression="WeekNumber"></asp:BoundField>
                </Columns>
            </asp:GridView>


        </asp:View>














    </asp:MultiView>




   
    <br />
    <br />


   <a href="Project5.aspx"> Main Menu</a>

</asp:Content>


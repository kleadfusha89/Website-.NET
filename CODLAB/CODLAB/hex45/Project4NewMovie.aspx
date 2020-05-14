<%@ Page Title="Project 4 (#45) - New movie" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project4NewMovie.aspx.cs" Inherits="hex45_Project4NewMovie" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">
    <h1>Project 4 (#45) - New movie</h1>
    <br />
    <br />

    <asp:SqlDataSource ID="sqlNewMovie" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [MovieNbr], [Title], [ReleasedDate] FROM [hex45Movies]" DeleteCommand="DELETE FROM [hex45Movies] WHERE [MovieNbr] = @MovieNbr" InsertCommand="INSERT INTO [hex45Movies] ([MovieNbr], [Title], [ReleasedDate]) VALUES (@MovieNbr, @Title, @ReleasedDate)" UpdateCommand="UPDATE [hex45Movies] SET [Title] = @Title, [ReleasedDate] = @ReleasedDate WHERE [MovieNbr] = @MovieNbr">
        <DeleteParameters>
            <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Title" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="ReleasedDate"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="ReleasedDate"></asp:Parameter>
            <asp:Parameter Name="MovieNbr" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>


    <table class="project4float">




        <tr>
            <td>
                <asp:ImageButton ID="ibnCheckOut" runat="server" ImageUrl="images/p4buttonCheckOut.png" PostBackUrl="~/hex45/Project4CheckOut.aspx" AlternateText="Check out image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnMemberList" runat="server" ImageUrl="images/p4buttonMemberList.png" PostBackUrl="~/hex45/Project4MemberList.aspx" AlternateText="Member list image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnMemberReport" runat="server" ImageUrl="images/p4buttonMemberRpt.png" PostBackUrl="~/hex45/Project4MemberReport.aspx" AlternateText="Member report image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnMovieList" runat="server" ImageUrl="images/p4buttonMovieList.png" PostBackUrl="~/hex45/Project4MovieList.aspx" AlternateText="Movie list image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnMovieReport" runat="server" ImageUrl="images/p4buttonMovieReport.png" PostBackUrl="~/hex45/Project4MovieReport.aspx" AlternateText="Movie report image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnNewMember" runat="server" ImageUrl="images/p4buttonNewMember.png" PostBackUrl="~/hex45/Project4NewMember.aspx" AlternateText="New member image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnNewMovie" runat="server" ImageUrl="images/p4buttonNewMovieSelected.png" PostBackUrl="~/hex45/Project4NewMovie.aspx" AlternateText="New movie image" /></td>
        </tr>
    </table>


    <br />
    <br />
    <br />
    <div>

        <asp:DetailsView ID="dtvNewMovie" runat="server"
            Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MovieNbr" DataSourceID="sqlNewMovie" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="MovieNbr" HeaderText="Movie Number" ReadOnly="True" SortExpression="MovieNbr"></asp:BoundField>
                <asp:BoundField DataField="Title" HeaderText="Movie Title" SortExpression="Title"></asp:BoundField>
                <asp:BoundField DataField="ReleasedDate" HeaderText="Date released" SortExpression="ReleasedDate"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True"
                    CausesValidation="true"
                    ShowEditButton="false"
                    ShowCancelButton="true"
                    ShowDeleteButton="false"></asp:CommandField>
            </Fields>
        </asp:DetailsView>

    </div>

</asp:Content>


<%@ Page Title="Project 4 (#45) - Member Report" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project4MemberReport.aspx.cs" Inherits="hex45_Project4MemberReport" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">
    <h1>Project 4 (#45) - Member Report</h1>
    <br />
    <br />

    <asp:SqlDataSource ID="sqlMember" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth], [FullName] FROM [hex45MembersView] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>

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
                <asp:ImageButton ID="ibnMemberReport" runat="server" ImageUrl="images/p4buttonMemberRptSelected.png" PostBackUrl="~/hex45/Project4MemberReport.aspx" AlternateText="Member report image" /></td>
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
                <asp:ImageButton ID="ibnNewMovie" runat="server" ImageUrl="images/p4buttonNewMovie.png" PostBackUrl="~/hex45/Project4NewMovie.aspx" AlternateText="New movie image" /></td>
        </tr>
    </table>

    <asp:ListBox Height="300px" ID="lstMember" DataSourceID="sqlMember" DataTextField="FullName" DataValueField="CardNbr" runat="server" AutoPostBack="true"></asp:ListBox>
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="sqlSelectedMember" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [RentalID], [MovieNbr], [RentDate], [Title] FROM [hex45RentalsView] WHERE ([CardNbr] = @CardNbr) ORDER BY [RentDate] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lstMember" PropertyName="SelectedValue" Name="CardNbr" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:GridView ID="grdMember" CssClass="project4floatWLayout" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="sqlSelectedMember" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="ID" ReadOnly="True" SortExpression="RentalID"></asp:BoundField>
            <asp:BoundField DataField="MovieNbr" HeaderText="Movie Number" SortExpression="MovieNbr"></asp:BoundField>
            <asp:BoundField DataField="RentDate" HeaderText="Date rented" ReadOnly="True" SortExpression="RentDate"></asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="Movie title" SortExpression="Title"></asp:BoundField>
        </Columns>
    </asp:GridView>

</asp:Content>


<%@ Page Title="Project 4 (#45) - Movie report" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project4MovieReport.aspx.cs" Inherits="hex45_Project4MovieReport" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">
    <h1>Project 4 (#45) - Movie report</h1>
    <br />
    <br />


    <asp:SqlDataSource ID="sqlMovieReport" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [MovieNbr], [Title], [ReleasedDate] FROM [hex45Movies] ORDER BY [Title]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlSelectedMovieReport" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [RentalID], [CardNbr], [RentDate], [LastName], [FirstName], [PhoneNbr] FROM [hex45RentalsView] WHERE ([MovieNbr] = @MovieNbr) ORDER BY [RentDate] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lstMovieReport" PropertyName="SelectedValue" Name="MovieNbr" Type="Decimal"></asp:ControlParameter>
        </SelectParameters>
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
                <asp:ImageButton ID="ibnMovieReport" runat="server" ImageUrl="images/p4buttonMovieReportSelected.png" PostBackUrl="~/hex45/Project4MovieReport.aspx" AlternateText="Movie report image" /></td>
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


    <asp:ListBox ID="lstMovieReport" runat="server" DataSourceID="sqlMovieReport" Height="300px" DataTextField="Title" DataValueField="MovieNbr" AutoPostBack="true"></asp:ListBox>


    <br />
    <br />
    <br />


    <asp:GridView ID="grdMovieReport" runat="server" CssClass="project4floatWLayout" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="sqlSelectedMovieReport" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="ID" ReadOnly="True" SortExpression="RentalID"></asp:BoundField>
            <asp:BoundField DataField="CardNbr" HeaderText="Card Number" SortExpression="CardNbr"></asp:BoundField>
            <asp:BoundField DataField="RentDate" HeaderText="Date rented" SortExpression="RentDate"></asp:BoundField>
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="PhoneNbr" HeaderText="Telephone" SortExpression="PhoneNbr"></asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>


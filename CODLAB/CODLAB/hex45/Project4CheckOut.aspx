<%@ Page Title="Project 4 (#45) - Check out page" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project4CheckOut.aspx.cs" Inherits="hex45_Project4CheckOut" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">
    <h1>Project 4 (#45) - Check out page</h1>


    <br />
    <br />

    <asp:SqlDataSource ID="sqlMember" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth], [FullName] FROM [hex45MembersView] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlMovie" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [MovieNbr], [Title], [ReleasedDate] FROM [hex45Movies] ORDER BY [Title]"></asp:SqlDataSource>

    <table class="project4float">
        <tr>
            <td>
                <asp:ImageButton ID="ibnCheckOut" runat="server" ImageUrl="images/p4buttonCheckOutSelected.png" PostBackUrl="~/hex45/Project4CheckOut.aspx" AlternateText="Check out image" /></td>
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
                <asp:ImageButton ID="ibnNewMovie" runat="server" ImageUrl="images/p4buttonNewMovie.png" PostBackUrl="~/hex45/Project4NewMovie.aspx" AlternateText="New movie image" /></td>
        </tr>
    </table>


    <asp:ListBox Height="300px" ID="lstMember" DataSourceID="sqlMember" DataTextField="FullName" DataValueField="CardNbr" runat="server" AutoPostBack="true"></asp:ListBox>
    <asp:ListBox ID="lstMovie" Height="300px" runat="server" DataSourceID="sqlMovie" DataTextField="Title" DataValueField="MovieNbr" AutoPostBack="true"></asp:ListBox>




    <br />
    <br />
    <br />

    <div class="floatLeft">
        <asp:ImageButton ID="ibnCheckOutConfirm" runat="server" ImageUrl="images/p4buttonConfirmCheckOut.png" AlternateText="Checking out image" OnClick="ibnCheckOutConfirm_Click" />
    </div>

    <br />
    <br />
    <br />
    <br />

    <div class="checkOutConfirmation">
        <strong>
            <asp:Label ID="lblCheckOutName" runat="server" Text=""></asp:Label></strong>
        <asp:Label ID="lblCheckOutText" runat="server" Text=""></asp:Label>
        <strong>
            <asp:Label ID="lblCheckOutMovie" runat="server" Text=""></asp:Label></strong>
    </div>


    <br />
    <br />
</asp:Content>


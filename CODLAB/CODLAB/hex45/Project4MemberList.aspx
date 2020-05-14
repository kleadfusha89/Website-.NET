<%@ Page Title="Project 4 (#45) - Member list" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project4MemberList.aspx.cs" Inherits="hex45_Project4MemberList" %>


<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" runat="Server">


    <h1>Project 4 (#45) - Member list</h1>
    <br />
    <br />


    <asp:SqlDataSource ID="sqlMemberList" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
        SelectCommand="SELECT [CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth] FROM [hex45Members] ORDER BY [CardNbr]"
        InsertCommand="INSERT INTO [hex45Members] ([CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth]) VALUES (@CardNbr, @LastName, @FirstName, @StreetAddr, @City, @StateAbbr, @PostalCode, @PhoneNbr, @DateOfBirth)"
        UpdateCommand="UPDATE [hex45Members] SET [LastName] = @LastName, [FirstName] = @FirstName, [StreetAddr] = @StreetAddr, [City] = @City, [StateAbbr] = @StateAbbr, [PostalCode] = @PostalCode, [PhoneNbr] = @PhoneNbr, [DateOfBirth] = @DateOfBirth WHERE [CardNbr] = @CardNbr">
        <InsertParameters>
            <asp:Parameter Name="CardNbr" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="StreetAddr" Type="String"></asp:Parameter>
            <asp:Parameter Name="City" Type="String"></asp:Parameter>
            <asp:Parameter Name="StateAbbr" Type="String"></asp:Parameter>
            <asp:Parameter Name="PostalCode" Type="String"></asp:Parameter>
            <asp:Parameter Name="PhoneNbr" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="DateOfBirth"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="StreetAddr" Type="String"></asp:Parameter>
            <asp:Parameter Name="City" Type="String"></asp:Parameter>
            <asp:Parameter Name="StateAbbr" Type="String"></asp:Parameter>
            <asp:Parameter Name="PostalCode" Type="String"></asp:Parameter>
            <asp:Parameter Name="PhoneNbr" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="DateOfBirth"></asp:Parameter>
            <asp:Parameter Name="CardNbr" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>



    <table class="project4float">
        <tr>
            <td>
                <asp:ImageButton ID="ibnCheckOut" runat="server" ImageUrl="images/p4buttonCheckOut.png" PostBackUrl="~/hex45/Project4CheckOut.aspx" AlternateText="Check out image" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ibnMemberList" runat="server" ImageUrl="images/p4buttonMemberListSelected.png" PostBackUrl="~/hex45/Project4MemberList.aspx" AlternateText="Member list image" /></td>
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

    <div class="project4floatWLayout">
        <asp:GridView ID="grdMemberList" runat="server" AutoGenerateColumns="False" DataKeyNames="CardNbr"
            DataSourceID="sqlMemberList"
            AllowSorting="true"
            CssClass="project4floatWLayout"
            AllowPaging="true">
            <Columns>
                <asp:CommandField ShowEditButton="true" HeaderText="Edit" />
                <asp:BoundField DataField="CardNbr" HeaderText="Card Number" ReadOnly="True" SortExpression="CardNbr"></asp:BoundField>
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                <asp:BoundField DataField="StreetAddr" HeaderText="Address" SortExpression="StreetAddr"></asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                <asp:BoundField DataField="StateAbbr" HeaderText="State" SortExpression="StateAbbr"></asp:BoundField>
                <asp:BoundField DataField="PostalCode" HeaderText="ZIP Code" SortExpression="PostalCode"></asp:BoundField>
                <asp:BoundField DataField="PhoneNbr" HeaderText="Telephone" SortExpression="PhoneNbr"></asp:BoundField>
                <asp:BoundField DataField="DateOfBirth" HeaderText="Birthday" SortExpression="DateOfBirth"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PRACTICE.aspx.cs" Inherits="Demos_PRACTICE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
        table {
            width: 180px;
            height: 100px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="sqlMember" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [CardNbr], [LastName], [FirstName], [StreetAddr], [City], [StateAbbr], [PostalCode], [PhoneNbr], [DateOfBirth], [FullName] FROM [hex45MembersView] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlMovie" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' SelectCommand="SELECT [MovieNbr], [Title], [ReleasedDate] FROM [hex45Movies] ORDER BY [Title]"></asp:SqlDataSource>



        <div>

            <table>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnCheckOut" runat="server" ImageUrl="~/hex45/images/p4buttonCheckOutSelected.png" AlternateText="Check out image" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnMemberList" runat="server" ImageUrl="~/hex45/images/p4buttonMemberList.png" AlternateText="Member list image" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnMemberReport" runat="server" ImageUrl="~/hex45/images/p4buttonMemberRpt.png" AlternateText="Member report image" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnMovieList" runat="server" ImageUrl="~/hex45/images/p4buttonMovieList.png" AlternateText="Movie list image" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnMovieReport" runat="server" ImageUrl="~/hex45/images/p4buttonMovieReport.png" AlternateText="Movie report image" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnNewMember" runat="server" ImageUrl="~/hex45/images/p4buttonNewMember.png" AlternateText="New member image" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ibnNewMovie" runat="server" ImageUrl="~/hex45/images/p4buttonNewMovie.png" AlternateText="New movie image" /></td>
                </tr>
            </table>




        

            <table>
                <tr>
                    <td>
                        <asp:ListBox Height="300px" ID="lstMember" DataSourceID="sqlMember" DataTextField="FullName" DataValueField="CardNbr" runat="server" AutoPostBack="true"></asp:ListBox></td>
                    <td>
                        <asp:ListBox ID="lstMovie" Height="300px" runat="server" DataSourceID="sqlMovie" DataTextField="Title" DataValueField="MovieNbr" AutoPostBack="true"></asp:ListBox></td>

                </tr>

            </table>


        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


                        <asp:ListBox Height="300px" ID="ListBox1" DataSourceID="sqlMember" DataTextField="FullName" DataValueField="CardNbr" runat="server" AutoPostBack="true"></asp:ListBox>

                        <asp:ListBox ID="ListBox2" Height="300px" runat="server" DataSourceID="sqlMovie" DataTextField="Title" DataValueField="MovieNbr" AutoPostBack="true"></asp:ListBox>


    </form>
</body>
</html>

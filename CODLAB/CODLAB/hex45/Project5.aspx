<%@ Page Title="Project 5 (#45) - Soccer Teams" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project5.aspx.cs" Inherits="hex45_Project5" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Project 5 (#45) - Soccer Teams</h1>
    <br />
    <br />

    <asp:ImageButton ID="ibnEdit" runat="server"  ImageUrl="~/hex45/images/soccerEdit.jpg" PostBackUrl="~/hex45/Project5Edit.aspx" />
    <asp:ImageButton ID="ibnView" runat="server"  ImageUrl="~/hex45/images/soccerView.jpg" PostBackUrl="~/hex45/Project5View.aspx" />


</asp:Content>


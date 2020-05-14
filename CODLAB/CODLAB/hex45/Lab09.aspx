<%@ Page Title="Klead F. (#45) - Lab 9 - XSLT" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Lab09.aspx.cs" Inherits="hex45_Lab09" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <h1>Klead F. (#45) - Lab 9 - XSLT</h1>

    <br />
    <br />
    <br />
    


    <asp:Xml ID="xmlSoccerTeams" runat="server"
        DocumentSource="~/hex45/Lab04Adverts_hex45.xml"
        TransformSource="Lab09.xslt"
        ></asp:Xml>


</asp:Content>


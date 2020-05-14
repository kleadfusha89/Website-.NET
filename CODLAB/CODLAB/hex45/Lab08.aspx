<%@ Page Title="Klead F. (#45) - Lab 08" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Lab08.aspx.cs" Inherits="hex45_Lab08" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <div>
    <h1>Klead F. (#45) - Lab 08</h1>
    <br /><br />

    <table class="lab8Table">
        <tr>
            <td>Your name:</td>
            <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rqvtxtName"
                runat="server"
                Text="*"
                ErrorMessage="You must enter your name."
                Display="Dynamic"
                CssClass="errorRed"
                SetFocusOnError="True"
                ControlToValidate="txtName">
            </asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Message</td>
            <td>
                <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rqvtxtMessage"
                runat="server"
                Text="*"
                ErrorMessage="You must enter a message."
                Display="Dynamic"
                CssClass="errorRed"
                SetFocusOnError="True"
                ControlToValidate="txtMessage">
            </asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:LinkButton ID="lkbSend" runat="server" OnClick="lkbSend_Click">Send</asp:LinkButton>
                <asp:LinkButton ID="lkbCancel" runat="server" OnClick="lkbCancel_Click" CausesValidation="false">Cancel</asp:LinkButton></td>
        </tr>

    </table>
    <br /><br />


        <asp:SqlDataSource ID="sqlUsernameMessage" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>'
            SelectCommand="SELECT [MessageID], [Name], [MessageText], [MessageDate] FROM [hex45Messages] ORDER BY [MessageID] DESC"></asp:SqlDataSource>

        <asp:GridView ID="grdMessagge" DataSourceID="sqlUsernameMessage" runat="server"
            AllowPaging="true" PageSize="20" AllowSorting="true"
            BorderStyle="Solid"
            AutoGenerateColumns="false"
            EmptyDataText="Nothing was found"
            PagerStyle-HorizontalAlign="Center" DataKeyNames="MessageID"
            CssClass="invoiceTable">
            
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="MessageID" SortExpression="MessageID" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                <asp:BoundField HeaderText="Name" DataField="Name" SortExpression="Name"></asp:BoundField>
                <asp:BoundField HeaderText="Message" DataField="MessageText" SortExpression="MessageText"></asp:BoundField>
                <asp:BoundField HeaderText="Date" DataField="MessageDate" SortExpression="MessageDate"></asp:BoundField>
            </Columns>
        </asp:GridView>

    <asp:ValidationSummary ID="vsmSummaryMsg" 
            runat="server" 
            HeaderText="Fix the following errors and resubmit." 
            DisplayMode="BulletList" 
            ShowSummary="false"
            ShowMessageBox="True" />
        </div>
</asp:Content>


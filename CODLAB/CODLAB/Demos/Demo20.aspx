<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo20.aspx.cs" Inherits="Demos_Demo20" %>

<!DOCTYPE html [
    <!ENTITY nbsp "&#160;">

]>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #20 - Grid w/Template</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #20 - Grid w/Template</h1>
            <br />
            <br />
            <br />

            <asp:SqlDataSource ID="sqlBooks" runat="server" 
                ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [BookID], [BookTitle], [ISBN], [PublishedDate], [Author], [ImageURL], [Rating], [Comments] FROM [hex45Books]" 
                UpdateCommand="UPDATE [hex45Books] SET [Rating] = @Rating, [Comments] = @Comments WHERE [BookID] = @BookID">
                <UpdateParameters>
                     <asp:Parameter Name="Rating" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Comments" Type="String"></asp:Parameter>
                    <asp:Parameter Name="BookID" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>


            <asp:GridView ID="grdBooks" runat="server" DataSourceID="sqlBooks" AutoGenerateColumns="False" DataKeyNames="BookID" OnRowCommand="grdBooks_RowCommand">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" InsertVisible="False" SortExpression="BookID"></asp:BoundField>
                    <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" ReadOnly="True" SortExpression="BookTitle"></asp:BoundField>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN"></asp:BoundField>
                    <asp:BoundField DataField="PublishedDate" HeaderText="PublishedDate" ReadOnly="True" SortExpression="PublishedDate"></asp:BoundField>
                    <asp:BoundField DataField="Author" HeaderText="Author" ReadOnly="True" SortExpression="Author"></asp:BoundField>
                    <%--<asp:BoundField DataField="ImageURL" HeaderText="ImageURL" ReadOnly="True" SortExpression="ImageURL"></asp:BoundField>--%>
                    <asp:CommandField ShowEditButton="true" />
                    <%--<asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating"></asp:BoundField>--%>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlRating" runat="server" Text='<%# Bind("Rating") %>'>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem Value="" Enabled="false"></asp:ListItem>
                            </asp:DropDownList>


                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblReading" runat="server" Text='<%# Bind("Rating") %>'></asp:Label>

                        </ItemTemplate>


                    </asp:TemplateField>
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments"></asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFormatString="http://www.isbn.ne/{0}" 
                        DataNavigateUrlFields="ISBN"
                        Text="Buy"/>

                    <asp:ButtonField Text="Sell" CommandName="Sell" />
                    <asp:ButtonField Text="Library" CommandName="Library" />
                    <asp:ButtonField Text="Search" CommandName="Search" />

                </Columns>
            </asp:GridView>




        </div>
    </form>
</body>
</html>

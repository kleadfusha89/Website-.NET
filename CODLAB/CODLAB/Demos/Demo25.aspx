<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo25.aspx.cs" Inherits="Demos_Demo25" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #25 - XML and XSLT</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #25 - XML and XSLT</h1>
            <br />
            <br />
            <br />



            <asp:DropDownList ID="ddlViewSelector" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlViewSelector_SelectedIndexChanged">
                <asp:ListItem Value="CD">CD Collection</asp:ListItem>
                <asp:ListItem Value="States">States</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />
            <br />

            <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">

                <asp:View ID="viwCD" runat="server">
                    <asp:Xml ID="xmlCdCollection" runat="server"
                        DocumentSource="~/Demos/CdCollection.xml"
                        TransformSource="Demo25.xslt" ></asp:Xml>

                </asp:View>




                <asp:View ID="viwStates" runat="server">
                    <asp:Xml ID="xmlStates" runat="server"
                        DocumentSource="~/Demos/States.xml"
                        TransformSource="Demo25b.xslt"></asp:Xml>

                </asp:View>
















            </asp:MultiView>


        </div>
    </form>
</body>
</html>

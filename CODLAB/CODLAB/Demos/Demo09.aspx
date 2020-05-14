<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo09.aspx.cs" Inherits="Demos_Demo09" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #9 - AJAX</title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <h1>Demo #9 - AJAX</h1>
            <br /><br />
            <asp:ScriptManager ID="scmScriptManager" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="upnSelectDate" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>The date you have selected is 
                            </td>

                            <td>
                                <asp:Literal ID="litDate" runat="server"></asp:Literal>
                                <asp:LinkButton ID="lkbShowCal" runat="server" OnClick="lkbShowCal_Click">Change Date</asp:LinkButton>
                                <asp:HiddenField ID="hidShowCalFlag" runat="server" Value="0" />
                            </td>
                        </tr>


                        <tr>
                            <td>&#160;
                            </td>

                            <td>
                                <asp:Calendar ID="calSelectDate" runat="server" Visible="false" OnSelectionChanged="calSelectDate_SelectionChanged"></asp:Calendar>

                            </td>
                        </tr>


                    </table>
                </ContentTemplate>

            </asp:UpdatePanel>

            

            <br />
            <hr />
            <br />

            <strong>Lot's of text here</strong>

        </div>
    </form>
</body>
</html>

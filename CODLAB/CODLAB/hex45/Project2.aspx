<%@ Page Title="Klead F. (#45) - Project 2 - Order Entry" Language="C#" MasterPageFile="~/hex45/hex45_KleadF.master" AutoEventWireup="true" CodeFile="Project2.aspx.cs" Inherits="hex45_Project2" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
    <div>
        <h1>Klead F. (#45) - Project 2 - Order Entry</h1>
        <br /><br />


        <asp:ImageButton ID="ibnOrder" CausesValidation="false" ImageUrl="images/oeOrderInfoSelected.png" AlternateText="Order image" runat="server" OnClick="ibnOrder_Click" />
        <asp:ImageButton ID="ibnBilling" CausesValidation="false" ImageUrl="images/oeBillingDetails.png" AlternateText="Billing image" runat="server" OnClick="ibnBilling_Click" />
        <asp:ImageButton ID="ibnInvoice" ImageUrl="images/oeInvoice.png" AlternateText="Invoice image" runat="server" OnClick="ibnInvoice_Click" />

        <br /><br />

        <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">

            <asp:View ID="viwOrder" runat="server">
                
                <asp:XmlDataSource ID="xmlEntryItems" DataFile="Project2_OrderEntryItems_hex45.xml" runat="server"></asp:XmlDataSource>

                <table>
                    <tr>
                        <th><strong>Item</strong></th>
                        <th><strong>Qty</strong></th>
                    </tr>

                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlItem1" runat="server"
                                DataSourceID="xmlEntryItems"
                                DataTextField="Text"
                                DataValueField="Value"></asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="txtQuantity1" runat="server"
                                Columns="4" ></asp:TextBox>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ID="rqvddlItem1" runat="server"
                                ErrorMessage="Select an item."
                                ControlToValidate="ddlItem1"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        
                            <asp:RequiredFieldValidator ID="rqvtxtQuantity1" runat="server"
                                ErrorMessage="Enter the quantity of items you want to order."
                                ControlToValidate="txtQuantity1"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                       
                            <asp:RangeValidator ID="rgvtxtQuantity1" runat="server"
                                ErrorMessage="The value must be a whole number between 1 and 99."
                                ControlToValidate="txtQuantity1"
                                CssClass="error"
                                Type="Integer"
                                MinimumValue="1"
                                MaximumValue="99"
                                Display="Dynamic"></asp:RangeValidator>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlItem2" runat="server"
                                DataSourceID="xmlEntryItems"
                                DataTextField="Text"
                                DataValueField="Value"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtQuantity2" runat="server"
                                Columns="4"></asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlItem3" runat="server"
                                DataSourceID="xmlEntryItems"
                                DataTextField="Text"
                                DataValueField="Value">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtQuantity3" runat="server"
                                Columns="4"></asp:TextBox>
                        </td>
                    </tr>

                </table>

                <br /><br />

                <asp:Button ID="btnOderValidate" runat="server" Text="Validate" />

                <br /><br />



            </asp:View>


            <asp:View ID="viwBilling" runat="server">

                <asp:XmlDataSource ID="xmlStates" runat="server" DataFile="Lab07States_hex45.xml"></asp:XmlDataSource>

                <table>

                    <tr>
                        <td><span class="billingDetails">First name: </span></td>

                        <td><asp:TextBox ID="txtFirstName" runat="server" Width="176px"></asp:TextBox></td>

                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtFirstName" runat="server"
                                ErrorMessage="Enter your first name"
                                ControlToValidate="txtFirstName"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>


                    <tr>

                        <td><span class="billingDetails">Last name: </span></td>
                        <td><asp:TextBox ID="txtLastName" runat="server" Width="176px"></asp:TextBox></td>

                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtLastName" runat="server"
                                ErrorMessage="Enter your last name!"
                                ControlToValidate="txtLastName"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>



                    <tr>
                        <td><span class="billingDetails">Address: </span></td>
                        <td><asp:TextBox ID="txtAddress" runat="server" Width="176px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtAddress" runat="server"
                                ErrorMessage="Enter the address!"
                                ControlToValidate="txtAddress"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>

                        </td>
                    </tr>



                    <tr>
                        <td> <span class="billingDetails">City: </span></td>
                        <td><asp:TextBox ID="txtCity" runat="server" Width="176px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtCity" runat="server"
                                ErrorMessage="Enter the city!"
                                ControlToValidate="txtCity"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>



                    <tr>
                        <td><span class="billingDetails">State: </span></td>
                        <td>
                            <asp:DropDownList ID="ddlState" runat="server"
                                DataSourceID="xmlStates"
                                DataTextField="Text"
                                DataValueField="Value"
                                Width="180px">
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvddlState" runat="server"
                                ErrorMessage="Select a state!"
                                ControlToValidate="ddlState"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>



                    <tr>
                        <td><span class="billingDetails">Zip Code: </span></td>
                        <td><asp:TextBox ID="txtZipCode" runat="server" Width="176px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtZipCode" runat="server"
                                ErrorMessage="Enter a Zip Code!"
                                ControlToValidate="txtZipCode"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                       
                            <asp:RegularExpressionValidator ID="revtxtZipCode" runat="server"
                                ErrorMessage="Enter a correct value for Zip Code."
                                ControlToValidate="txtZipCode"
                                ValidationExpression="\d{5}(-\d{4})?"
                                CssClass="error"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>



                    <tr>
                        <td><span class="billingDetails">Phone Number: </span></td>
                        <td><asp:TextBox ID="txtPhoneNumber" runat="server" Width="176px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtPhoneNumber" runat="server"
                                ErrorMessage="Enter your phone number!"
                                ControlToValidate="txtPhoneNumber"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        
                            <asp:RegularExpressionValidator ID="revtxtPhoneNumber" runat="server"
                                ErrorMessage="The format of the phone number should be 333-333-4444."
                                ControlToValidate="txtPhoneNumber"
                                ValidationExpression="\d{3}-\d{3}-\d{4}"
                                CssClass="error"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>



                    <tr>
                        <td><span class="billingDetails">Email Address: </span></td>
                        <td><asp:TextBox ID="txtEmail" runat="server" Width="176px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvtxtEmail" runat="server"
                                ErrorMessage="Enter your email address!"
                                ControlToValidate="txtEmail"
                                CssClass="error"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        
                            <asp:RegularExpressionValidator ID="revtxtEmail" runat="server"
                                ErrorMessage="Enter a valid email address."
                                ControlToValidate="txtEmail"
                                ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b"
                                CssClass="error"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>


                <br />


                <asp:Button ID="btnBillingValidate" runat="server" Text="Validate" /><br />

 

                <br /><br /><br />


            </asp:View>








            <asp:View ID="viwInvoice" runat="server">

                <table class="invoiceTable">

                    <tr> 
                        <th>
                            Billing
                        </th>


                    </tr>


                    <tr>
                        <td>
                            <span class="billingDetails">Name: </span> 
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>


                    <tr>

                        <td>
                            <span class="billingDetails">Address: </span>
                            <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>


                    <tr>

                        <td>
                            <span class="billingDetails">City: </span>
                            <asp:Label ID="lblCityStateZipCode" runat="server" Text=""></asp:Label>
                        </td>

                    </tr>


                    <tr>
                        <td>
                            <span class="billingDetails">Phone: </span>
                            <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <span class="billingDetails">Email: </span>
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>

                </table>

                <br />

                <table class="invoiceTable">

                    <tr>
                        <th>Item</th>
                        <th>Qty</th>
                        <th>Each</th>
                        <th>Total</th>
                    </tr>


                    <tr>
                        <td>
                            <asp:Label ID="lblResultItem1" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultQty1" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultEach1" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultTotal1" runat="server" Text=""></asp:Label></td>
                    </tr>


                    <tr>
                        <td>
                            <asp:Label ID="lblResultItem2" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultQty2" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultEach2" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultTotal2" runat="server" Text=""></asp:Label></td>
                    </tr>


                    <tr>
                        <td>
                            <asp:Label ID="lblResultItem3" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultQty3" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultEach3" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResultTotal3" runat="server" Text=""></asp:Label></td>
                    </tr>


                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblResultTotal" runat="server" Text=""></asp:Label>

                        </td>
                    </tr>

                </table>

            </asp:View>

        </asp:MultiView>

        <br />

        <table>
            <tr>
                <th><asp:LinkButton ID="lkbPreviousStep" runat="server" Text="   Previous Page  " CausesValidation="false" OnClick="lkbPreviousStep_Click"></asp:LinkButton></th>
                <th><asp:LinkButton ID="lkbNextStep" runat="server" Text="   Next Page   " CausesValidation="false" OnClick="lkbNextStep_Click"></asp:LinkButton></th>
            </tr>

        </table>

        <br />
        <br />
        <br />


        Buttons created by: https://dabuttonfactory.com/
    </div>


    

</asp:Content>


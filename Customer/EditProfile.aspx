<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style3
    {
        text-align: right;
        }
        .style5
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:700px">
        <br />
        <table class="style1" style="border: 1px solid #996600" bgcolor="#FFCCFF">
            <tr>
                <td class="style3" colspan="2">
                    <h2 class="style5" style="text-align: center ;background-color:Purple">Customer Profile</h2></td>
            </tr>
            <tr>
                <td class="style3">
                    Cust ID</td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" Width="100px" CssClass="txt" 
                        ReadOnly="True">[AUTO]</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    NAME</td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="NameTextBox" Display="Dynamic" 
                        ErrorMessage="(only characters and space)" ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="[a-zA-Z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    CONTACT NO</td>
                <td>
                    <asp:TextBox ID="ContactNoTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ContactNoTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="ContactNoTextBox" Display="Dynamic" 
                        ErrorMessage="(Enter 10 digits mobile no.)" ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    EMAIL ID</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmailTextBox" Display="Dynamic" 
                        ErrorMessage="(Enter valid Email-id)" ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    ADDRESS</td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Width="300px" CssClass="txt" 
                        Height="59px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="AddressTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    GENDER</td>
                <td>
                    <asp:RadioButtonList ID="GenderRadioButtonList" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="GenderRadioButtonList" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update Profile" 
                        onclick="Button1_Click" CssClass="txt" />
                </td>
            </tr>
        </table>
    <br />
</div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Admin_EditProfile" %>

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
    .txt
    {}
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:700px">
        <br />
        <table class="style1" style="border: 1px solid #996600" bgcolor="#FFCCFF">
            <tr>
                <td class="style3" colspan="2">
                    <h2 class="style5" style="text-align: center; background-color: Purple">Company Profile</h2></td>
            </tr>
            <tr>
                <td class="style3">
                    NAME</td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    ADDRESS</td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Width="300px" CssClass="txt" 
                        Height="66px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="AddressTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    CONTACT PERSON</td>
                <td>
                    <asp:TextBox ID="PersonTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="PersonTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    MOBILE NO</td>
                <td>
                    <asp:TextBox ID="MobileNoTextBox" runat="server" Width="200px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="MobileNoTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="MobileNoTextBox" Display="Dynamic" 
                        ErrorMessage="(10 Digits Mobile)" ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    PHONE NO</td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" Width="200px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="PhoneTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
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


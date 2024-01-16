<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="EditDealerInfo.aspx.cs" Inherits="Admin_EditDealerInfo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        text-align: right;
        }
        .style6
    {
        text-align: left;
    }
    .style7
    {
        color: #FFFFFF;
        background-color: #AA1C4E;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:600px">
    <br />
    <h2>Edit Dealer:: </h2>
        <br />
        <table bgcolor="#FFCCFF">
            <tr>
                <td colspan="2" style="background-color: #CC0066">
                    <strong><span class="style7" style="background-color: #CC0066">Edit Dealer 
                    Information
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Dealer ID</td>
                <td>
                    <asp:Label ID="IdLabel" runat="server">(Auto)</asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Company Name</td>
                <td>
                    <asp:DropDownList ID="NameDropDownList" runat="server" Width="300px">
                        <asp:ListItem>- Select Company -</asp:ListItem>
                        <asp:ListItem>Maruti</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="NameDropDownList" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True" InitialValue="- Select Company -"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Contact Person</td>
                <td>
                    <asp:TextBox ID="PersonTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="PersonTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Contact No</td>
                <td>
                    <asp:TextBox ID="ContactNoTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ContactNoTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Address</td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Height="61px" TextMode="MultiLine" 
                        Width="394px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="AddressTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Dealer Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="63px" Width="98px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update Dealer Info" 
                        onclick="Button1_Click" CssClass="txt" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Dealer List" 
                        onclick="Button1_Click" CssClass="txt" 
                        PostBackUrl="~/Admin/DealerList.aspx" CausesValidation="False" />
                </td>
            </tr>
        </table>
    <br />
</div>
</asp:Content>


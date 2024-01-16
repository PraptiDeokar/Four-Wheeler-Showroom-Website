<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="EditVehicle.aspx.cs" Inherits="Admin_EditVehicle" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        text-align: left;
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
        <table bgcolor="#FFCCFF">
            <tr>
                <td colspan="2" style="background-color: #CC0066">
                    <strong><span class="style7" style="background-color: #CC0066">Edit Vehicle
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Vehicle ID</td>
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
                    Vehicle Name</td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Vehicle Model</td>
                <td>
                    <asp:TextBox ID="ModelTextBox" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Fuel&nbsp; Type</td>
                <td>
                    <asp:DropDownList ID="TypeDropDownList" runat="server" Width="300px">
                        <asp:ListItem>Petrol</asp:ListItem>
                        <asp:ListItem>Diesel</asp:ListItem>
                        <asp:ListItem>Petrol and diesel</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Description</td>
                <td>
                    <asp:TextBox ID="DescTextBox" runat="server" Height="61px" TextMode="MultiLine" 
                        Width="394px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DescTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Cost</td>
                <td>
                    <asp:TextBox ID="CostTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="CostTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Vehicle Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" />
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
                    Color</td>
                <td>
                    <asp:TextBox ID="ColorTextBox" runat="server" Width="200px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ColorTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Specification
                    <br />
                    Summary</td>
                <td>
                    <asp:TextBox ID="SpecTextBox" runat="server" Height="61px" TextMode="MultiLine" 
                        Width="394px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="SpecTextBox" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update Vehicle" 
                        onclick="Button1_Click" CssClass="txt" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Vehicle List" 
                        onclick="Button1_Click" CssClass="txt" 
                        PostBackUrl="~/Admin/VehicleList.aspx" CausesValidation="False" />
                </td>
            </tr>
        </table>
    <br />
</div>
</asp:Content>


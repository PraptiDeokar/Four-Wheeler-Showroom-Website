<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<marquee style="height: 62px; width: 1050px"><img src="back/slide.png" /></marquee>
    <div style="margin:auto;width:324px">
    
<br />
<br />

    <asp:Login ID="Login1" runat="server" BackColor="#0066FF" BorderColor="#CCCC99" 
        BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/Merchant/Home.aspx" 
        Font-Names="Verdana" Font-Size="10pt" Height="161px" Width="302px" 
        onloggingin="Login1_LoggingIn1" PasswordRecoveryText="Forgot Password?" 
            PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
            ForeColor="White">
        <HyperLinkStyle ForeColor="White" />
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height:161px;width:317px;">
                            <tr>
                                <td align="center" colspan="2" 
                                    style="color:White;background-color:Navy;font-weight:bold;">
                                    Log In</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                        ValidationGroup="Login1" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="color:White;">
                                    <asp:HyperLink ID="PasswordRecoveryLink" runat="server" ForeColor="White" 
                                        NavigateUrl="~/PasswordRecovery.aspx">Forgot Password?</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:Login>
        <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
    <br />
</div>
 
</asp:Content>


﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewReg.aspx.cs" Inherits="NewAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:500px">
<h2>New Customer</h2>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFCCFF" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="10pt" Width="428px" 
      ContinueDestinationPageUrl="~/Customer/Home.aspx" 
            oncontinuebuttonclick="CreateUserWizard1_ContinueButtonClick">
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" Title="New Customer" >
                <ContentTemplate>
                    <table style="font-family: Verdana; font-size: 100%; width: 428px;" 
bgcolor="#FFCCFF">
                        <tr>
                            <td align="center" colspan="2" 
                                style="color: White; background-color: Purple; font-weight: bold;">
                                New Customer</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
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
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="(Enter valid email-id)" ControlToValidate="Email" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ValidationGroup="CreateUserWizard1"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Security question is required." 
                                    ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server" ontextchanged="Answer_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                    ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Contact No</td>
                            <td>
                                <asp:TextBox ID="ContactNoTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired0" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="*" ToolTip="Required" 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="ContactNoTextBox" ErrorMessage="*" SetFocusOnError="True" 
                                    ToolTip="Invalid Mobile" ValidationExpression="\d{10}" 
                                    ValidationGroup="CreateUserWizard1"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1">
                                Address</td>
                            <td class="style1">
                                <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired1" runat="server" 
                                    ControlToValidate="AddressTextBox" ErrorMessage="Required." ToolTip="Required" 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Reg Date</td>
                            <td>
                                <asp:TextBox ID="RegDateTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired2" runat="server" 
                                    ControlToValidate="RegDateTextBox" ErrorMessage="Required." ToolTip="Required" 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" 
            HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <SideBarButtonStyle 
            ForeColor="#FFFFFF" BorderWidth="0px" Font-Names="Verdana" />
        <SideBarStyle BackColor="#7C6F57" Font-Size="0.9em" 
            VerticalAlign="Top" BorderWidth="0px" />
        <StepStyle BorderWidth="0px" />
    </asp:CreateUserWizard>
<br />

</div>

</asp:Content>


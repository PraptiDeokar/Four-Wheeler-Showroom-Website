<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="margin:auto;width:500px">
<h2>Change Password</h2>
<br />

    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#FFCCFF" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        ContinueDestinationPageUrl="~/Admin/AddVehicle.aspx" Font-Names="Verdana" 
        Font-Size="10pt" onchangedpassword="ChangePassword1_ChangedPassword">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:ChangePassword>

</div>
</asp:Content>


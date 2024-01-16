<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.master" AutoEventWireup="true" CodeFile="Pay.aspx.cs" Inherits="Customer_Pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 126%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:400px">
<br />
<h2 style="color: #FF0000">Enter Account Details ::</h2>
<br />

    <table class="style1">
        <tr>
            <td bgcolor="#FF99FF">
                Order No</td>
            <td bgcolor="#FF99FF">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF99FF">
                Order Amount</td>
            <td bgcolor="#FF99FF">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF99FF">
                Credit Card No</td>
            <td bgcolor="#FF99FF">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="(Required)" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="(Enter 16 digits credit card no.)" 
                    ForeColor="Red" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF99FF">
                &nbsp;</td>
            <td bgcolor="#FF99FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="OK" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF99FF">
                &nbsp;</td>
            <td bgcolor="#FF99FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</div>
<!-marquee><center><img src="back/welnext.jpg" alt="" /></center></marquee>
</asp:Content>


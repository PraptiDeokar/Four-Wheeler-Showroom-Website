<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.master" AutoEventWireup="true" CodeFile="PaymentPortal.aspx.cs" Inherits="Customer_CAPaymentPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:900px;margin:auto">

    <br />
    <h2 style="color: #FF0000">Make Payment Online::</h2>
    <br />

    <table class="style1">
        <tr>
            <td style="background-color: #FF99FF">
                Order Details</td>
            <td style="background-color: #FF99FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#FFCCFF">
                Order No</td>
            <td bgcolor="#FFCCFF">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFCCFF">
                Order Date</td>
            <td bgcolor="#FFCCFF">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFCCFF">
                Order Amt</td>
            <td bgcolor="#FFCCFF">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFCCFF">
                Booking ID</td>
            <td bgcolor="#FFCCFF">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="498px" CellPadding="4" 
            ForeColor="#333333" GridLines="None" DataKeyNames="OrderId">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" 
                SortExpression="OrderId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="BookId" HeaderText="BookId" 
                SortExpression="BookId" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" 
                SortExpression="Cost" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VehicleConnectionString %>" 
        
            
            SelectCommand="SELECT [OrderId], [OrderDate], [Status], [BookId], [Cost] FROM [OrderMaster] WHERE ([OrderId] = @OrderId)">
        <SelectParameters>
            <asp:SessionParameter Name="OrderId" SessionField="ordid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

    <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
        Text="Make Payment" />

        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>

</div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Customer_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:800px">

<h3>Order Status::<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        </h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." GridLines="None" 
        Width="761px" ForeColor="#333333" onrowcommand="GridView1_RowCommand" onselectedindexchanged="GridView1_SelectedIndexChanged" 
           >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderID" ReadOnly="True" 
                SortExpression="OrderID" />
            <asp:BoundField DataField="OrderDate" 
                DataFormatString="{0:dd/MM/yyyy}" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="Cost" HeaderText="OrderAmt" 
                SortExpression="OrderAmt" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:ButtonField ButtonType="Button" CommandName="Payment" 
                Text="Make Payment" />
            <asp:ButtonField ButtonType="Button" CommandName="COrder" Text="Cancel Order" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
        ConnectionString="<%$ ConnectionStrings:VehicleDBConnectionString1 %>" 
        
            
            
            
            
            
            SelectCommand="SELECT [OrderId], [OrderDate], [Status], [BookId], [Cost] FROM [OrderMaster] WHERE (([BookId] = @BookId) and [Status]=@Status) " 
            onselecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:SessionParameter Name="BookId" SessionField="bid" />
            <asp:Parameter DefaultValue="Pending" Name="Status" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
&nbsp;
    <br />


</div>
</asp:Content>


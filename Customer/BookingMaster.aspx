<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.master" AutoEventWireup="true" CodeFile="BookingMaster.aspx.cs" Inherits="Customer_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:1000px">
<h3>Booking Details:: 
    <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
        </h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="908px" AllowPaging="True" 
        CellPadding="4" EmptyDataText="Your Shopping Cart is Empty" 
            onrowcommand="GridView1_RowCommand" DataKeyNames="BookId" 
            ForeColor="#333333" GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookId" HeaderText="BookId" 
                SortExpression="BookId" ReadOnly="True" />
            <asp:BoundField DataField="BookDate" HeaderText="BookDate" 
                SortExpression="BookDate" />
            <asp:BoundField DataField="VehicleId" HeaderText="VehicleId" 
                SortExpression="VehicleId" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
            <asp:BoundField DataField="VehicleName" HeaderText="VehicleName" 
                SortExpression="VehicleName" />
            <asp:BoundField DataField="VehicleModel" HeaderText="VehicleModel" 
                SortExpression="VehicleModel" />
            <asp:BoundField DataField="VehicleType" 
                HeaderText="VehicleType" SortExpression="VehicleType" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:TemplateField HeaderText="VehicleImage" SortExpression="VehicleImage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("VehicleImage") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="36px" 
                        ImageUrl='<%# Eval("VehicleImage") %>' Width="88px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="PlaceOrder" Text="Place Order" />
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
        
            
            
            
            
            
            
            
            
            
            SelectCommand="SELECT DISTINCT * FROM [BookingView] WHERE (([VehicleId] = @VehicleId) and ([BookId] = @BookId) and Status1=@Status1)">
        <SelectParameters>
            <asp:SessionParameter Name="VehicleId" SessionField="vid" Type="Int32" />
            <asp:SessionParameter Name="BookId" SessionField="bid" />
            <asp:Parameter DefaultValue="Pending" Name="Status1" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;
    </div>
</asp:Content>


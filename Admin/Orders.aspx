<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Customer_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:1000px">

<h3>Order Status::</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." GridLines="None" 
        Width="624px" ForeColor="#333333" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" 
                SortExpression="OrderId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="BookDate" HeaderText="BookDate" 
                SortExpression="BookDate" />
            <asp:BoundField DataField="VehicleId" HeaderText="VehicleId" 
                SortExpression="VehicleId" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
            <asp:BoundField DataField="VehicleName" HeaderText="VehicleName" 
                SortExpression="VehicleName" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
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
        ConnectionString="<%$ ConnectionStrings:VehicleConnectionString %>" 
        
            SelectCommand="SELECT [OrderId], [OrderDate], [Status], [BookDate], [VehicleId], [CompanyName], [VehicleName], [Cost] FROM [OrderView]">
    </asp:SqlDataSource>
    <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="BookId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" 
                    SortExpression="BookId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" 
                    SortExpression="UserId" />
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
                <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                    SortExpression="VehicleType" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="VehicleImage" HeaderText="VehicleImage" 
                    SortExpression="VehicleImage" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="Status1" HeaderText="Status1" 
                    SortExpression="Status1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:VehicleConnectionString %>" 
            SelectCommand="SELECT * FROM [BookingView] WHERE ([BookId] = @BookId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="BookId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
&nbsp;
    <br />


</div>
</asp:Content>


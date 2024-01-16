<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.master" AutoEventWireup="true" CodeFile="Booking Details.aspx.cs" Inherits="Customer_Booking_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="margin:auto; width:400px">


    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookId" HeaderText="BookId" 
                ReadOnly="True" SortExpression="BookId" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" 
                SortExpression="UserId" />
            <asp:BoundField DataField="BookDate" HeaderText="BookDate" 
                SortExpression="BookDate" DataFormatString="{0:MM/dd/yyyy}" />
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
            <asp:TemplateField HeaderText="VehicleImage" SortExpression="VehicleImage">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="39px" 
                        ImageUrl='<%# Eval("VehicleImage") %>' Width="51px" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("VehicleImage") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Status1" HeaderText="Status" 
                SortExpression="Status1" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VehicleDBConnectionString1 %>" 
        
        SelectCommand="SELECT DISTINCT * FROM [BookingView] where (([UserId]=@UserId) and [Status1]=@Status1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="UserId" PropertyName="Text" />
            <asp:Parameter DefaultValue="Placed" Name="Status1" />
        </SelectParameters>
    </asp:SqlDataSource>


</div>
</asp:Content>


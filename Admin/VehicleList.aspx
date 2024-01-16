<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="VehicleList.aspx.cs" Inherits="Admin_VehicleList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:800px">
    <br />
    <h2>Vehicle List</h2>
    

        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Size="Medium" NavigateUrl="~/Admin/AddVehicle.aspx">Add New Vehicle</asp:HyperLink>
            <br />
            <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="VehicleId" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
            CellPadding="4" 
            onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1031px" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Select" Text="Edit"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Delete" 
                        onclientclick="return confirm('do you want to delete information?')" 
                        Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="VehicleId" HeaderText="VehicleId" ReadOnly="True" 
                SortExpression="VehicleId" InsertVisible="False" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
            <asp:BoundField DataField="VehicleName" HeaderText="VehicleName" 
                SortExpression="VehicleName" />
            <asp:BoundField DataField="VehicleModel" HeaderText="VehicleModel" 
                SortExpression="VehicleModel" />
            <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                SortExpression="VehicleType" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" 
                SortExpression="Cost" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VehicleDBConnectionString1 %>" 
        DeleteCommand="DELETE FROM [VehicleMaster] WHERE [VehicleId] = @VehicleId" 
        InsertCommand="INSERT INTO [VehicleMaster] ([CompanyName], [VehicleName], [VehicleModel], [VehicleType], [Description], [Cost], [VehicleImage], [Color], [SpecificationSummary], [Status]) VALUES (@CompanyName, @VehicleName, @VehicleModel, @VehicleType, @Description, @Cost, @VehicleImage, @Color, @SpecificationSummary, @Status)" 
        SelectCommand="SELECT * FROM [VehicleMaster]" 
        
            
            
            UpdateCommand="UPDATE [VehicleMaster] SET [CompanyName] = @CompanyName, [VehicleName] = @VehicleName, [VehicleModel] = @VehicleModel, [VehicleType] = @VehicleType, [Description] = @Description, [Cost] = @Cost, [VehicleImage] = @VehicleImage, [Color] = @Color, [SpecificationSummary] = @SpecificationSummary, [Status] = @Status WHERE [VehicleId] = @VehicleId">
        <DeleteParameters>
            <asp:Parameter Name="VehicleId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="VehicleName" Type="String" />
            <asp:Parameter Name="VehicleModel" Type="String" />
            <asp:Parameter Name="VehicleType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Cost" Type="Decimal" />
            <asp:Parameter Name="VehicleImage" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="SpecificationSummary" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="VehicleName" Type="String" />
            <asp:Parameter Name="VehicleModel" Type="String" />
            <asp:Parameter Name="VehicleType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Cost" Type="Decimal" />
            <asp:Parameter Name="VehicleImage" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="SpecificationSummary" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="VehicleId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Vehicles.aspx.cs" Inherits="Vehicles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                DataKeyField="VehicleId" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                onitemcommand="DataList1_ItemCommand" RepeatColumns="2" Width="100%" onselectedindexchanged="DataList1_SelectedIndexChanged" 
                >
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td rowspan="7">
                                <asp:Image ID="Image1" runat="server" Height="137px" 
                                    ImageUrl='<%# Eval("VehicleImage") %>' Width="123px" />
                            </td>
                            <td>
                                Id:</td>
                            <td>
                                <asp:Label ID="VehicleIdLabel" runat="server" Text='<%# Eval("VehicleId") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name:</td>
                            <td>
                                <asp:Label ID="VehicleNameLabel" runat="server" 
                                    Text='<%# Eval("VehicleName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Model:</td>
                            <td>
                                <asp:Label ID="VehicleModelLabel" runat="server" 
                                    Text='<%# Eval("VehicleModel") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Type:</td>
                            <td>
                                <asp:Label ID="VehicleTypeLabel" runat="server" 
                                    Text='<%# Eval("VehicleType") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Description</td>
                            <td>
                                <asp:Label ID="DescriptionLabel" runat="server" 
                                    Text='<%# Eval("Description") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Company:</td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cost:</td>
                            <td>
                                <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Button ID="CartButton" runat="server" CausesValidation="False" 
                                    Text="Book" Width="124px" onclick="CartButton_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:VehicleDBConnectionString1 %>" 
                SelectCommand="SELECT * FROM [VehicleMaster]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

</asp:Content>


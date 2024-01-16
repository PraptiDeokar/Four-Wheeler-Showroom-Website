<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="CustomerList.aspx.cs" Inherits="Admin_CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 334px;">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustId" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="#333333" 
        GridLines="None" Width="745px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" onclick="LinkButton1_Click" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Delete" 
                        onclientclick="return confirm('Do you want to delete Record?')" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CustId" HeaderText="CustId" InsertVisible="False" 
                ReadOnly="True" SortExpression="CustId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                SortExpression="ContactNo" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                SortExpression="EmailId" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
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
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [CustomerMaster] WHERE [CustId] = @CustId" 
        InsertCommand="INSERT INTO [CustomerMaster] ([Name], [ContactNo], [EmailId], [Address], [Gender]) VALUES (@Name, @ContactNo, @EmailId, @Address, @Gender)" 
        SelectCommand="SELECT [CustId], [Name], [ContactNo], [EmailId], [Address], [Gender] FROM [CustomerMaster]" 
        UpdateCommand="UPDATE [CustomerMaster] SET [Name] = @Name, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [Address] = @Address, [Gender] = @Gender WHERE [CustId] = @CustId">
        <DeleteParameters>
            <asp:Parameter Name="CustId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="CustId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</div>
</asp:Content>


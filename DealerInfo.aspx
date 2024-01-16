<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DealerInfo.aspx.cs" Inherits="DealerInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:800px">
<br />
<h2>Dealer Information</h2>
<br />


    Select Company
                    <asp:DropDownList ID="NameDropDownList" runat="server" 
        Width="300px" AutoPostBack="True">
                        <asp:ListItem>- Select Company -</asp:ListItem>
                        <asp:ListItem>Maruti</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="NameDropDownList" Display="Dynamic" ErrorMessage="*" 
                        ForeColor="Red" SetFocusOnError="True" InitialValue="- Select Company -"></asp:RequiredFieldValidator>
                    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="DealerId" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="#333333" 
        GridLines="None" Width="788px" AllowPaging="True" 
          >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DealerId" HeaderText="DealerId" ReadOnly="True" 
                SortExpression="DealerId" InsertVisible="False" />
            <asp:BoundField DataField="Company" HeaderText="Company" 
                SortExpression="Company" />
            <asp:BoundField DataField="ContactPerson" HeaderText="ContactPerson" 
                SortExpression="ContactPerson" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                SortExpression="ContactNo" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:TemplateField HeaderText="DealerImage" SortExpression="DealerImage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DealerImage") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="55px" 
                        ImageUrl='<%# Eval("DealerImage") %>' Width="75px" />
                </ItemTemplate>
            </asp:TemplateField>
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
        ConnectionString="<%$ ConnectionStrings:VehicleDBConnectionString1 %>" 
        DeleteCommand="DELETE FROM [DealerMaster] WHERE [DealerId] = @DealerId" 
        InsertCommand="INSERT INTO [DealerMaster] ([Company], [ContactPerson], [ContactNo], [Address], [DealerImage]) VALUES (@Company, @ContactPerson, @ContactNo, @Address, @DealerImage)" 
        SelectCommand="SELECT [DealerId], [Company], [ContactPerson], [ContactNo], [Address], [DealerImage] FROM [DealerMaster] WHERE ([Company] = @Company)" 
        
        UpdateCommand="UPDATE [DealerMaster] SET [Company] = @Company, [ContactPerson] = @ContactPerson, [ContactNo] = @ContactNo, [Address] = @Address, [DealerImage] = @DealerImage WHERE [DealerId] = @DealerId">
        <DeleteParameters>
            <asp:Parameter Name="DealerId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Company" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="DealerImage" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="NameDropDownList" Name="Company" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Company" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="DealerImage" Type="String" />
            <asp:Parameter Name="DealerId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</div>
</asp:Content>


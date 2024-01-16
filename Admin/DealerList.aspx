<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="DealerList.aspx.cs" Inherits="Admin_DealerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:1010px">
    <br />
    <h2>Dealer List</h2>
    

        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Size="Medium" NavigateUrl="~/Admin/DealerInfo.aspx">Add New Dealer</asp:HyperLink>
            <br />
            <asp:GridView ID="GridView1" runat="server"
            CellPadding="4" DataKeyNames="DealerId" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." Width="1007px"    onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1" 
            AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
            BorderWidth="1px" >
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
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [DealerId], [Company], [ContactPerson], [ContactNo], [Address] FROM [DealerMaster]">
        </asp:SqlDataSource>
            <br />


</div>
</asp:Content>


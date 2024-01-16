using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Customer_Orders : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label2.Text = Membership.GetUser().ProviderUserKey.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index=Convert.ToInt32(e.CommandArgument);
        string ordid=GridView1.Rows[index].Cells[1].Text;
        if (e.CommandName == "Payment")
        {
            Response.Redirect("PaymentPortal.aspx?ordid=" + ordid);
            
        }
        else if (e.CommandName == "COrder")
        {
            ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Do you want to cancel order?')", true);

            db.Execute("Update ordermaster set status='Cancelled' where OrderID=" + ordid);
            db.Execute("Update BookingMaster set Status='Pending' where bookid=" + Session["bid"]);
            db.Execute("Update VehicleMaster set Status='Instock' where Vehicleid=" +Session["vid"]);
           
            GridView1.DataBind();

        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button lb = e.Row.Cells[7].Controls[0] as Button;
            lb.OnClientClick = "return confirm('Are you sure you want to cancel order?')";

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
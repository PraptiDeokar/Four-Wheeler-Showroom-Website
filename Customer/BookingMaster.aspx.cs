using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Customer_ShoppingCart : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        if (!IsPostBack)
        {
            Label2.Text = Membership.GetUser().ProviderUserKey.ToString();
            if (Session["vid"] != null)
            {
                object id=db.ExecuteCommandReturnID("Insert into BookingMaster (UserId,BookDate,Vehicleid,Status) values('" + Label2.Text + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt") + "'," + Session["vid"] + ",'Pending');select @@identity");
                Session["bid"] = id.ToString();
                

            }
         
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       // if (e.CommandName == "Remove")
        //{
         //   int index = Convert.ToInt32(e.CommandArgument);
          //  String bookid=GridView1.Rows[index].Cells[0].Text;
           // db.Execute("delete from BookingMaster where Bookid=" + bookid);
            //GridView1.DataBind();

        //}
        if (e.CommandName == "PlaceOrder")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            String bookid = GridView1.Rows[index].Cells[0].Text;
            String vid = GridView1.Rows[index].Cells[2].Text;
            String cost = GridView1.Rows[index].Cells[7].Text;
            object ordid = db.ExecuteCommandReturnID("Insert into OrderMaster (UserId,OrderDate,Status,BookId,cost) values('" + Label2.Text + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt") + "','Pending'," + bookid + ","+cost+");select @@identity");
            db.Execute("Update BookingMaster set Status='Placed' where bookid=" +bookid);
            db.Execute("Update VehicleMaster set Status='Sold' where Vehicleid="+ vid);
            Session["ordid"]=ordid;
            Response.Redirect("~/Customer/Orders.aspx");

        }
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
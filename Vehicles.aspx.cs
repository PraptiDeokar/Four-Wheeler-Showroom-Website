using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vehicles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int vid = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex]);
        Session["vid"] = vid;        
        
        Response.Redirect("~/Customer/BookingMaster.aspx");
    }



 protected void CartButton_Click(object sender, EventArgs e)
    {

    }
 protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
 {

 }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DealerList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/EditDealerInfo.aspx?id=" + GridView1.SelectedValue);
    }


    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/EditDealerInfo.aspx?id=" + GridView1.SelectedValue);
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       

    }
}


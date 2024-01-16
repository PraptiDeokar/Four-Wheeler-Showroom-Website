using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.Text;
using System.Web.Security;
public partial class Customer_CAPaymentPortal : System.Web.UI.Page
{
    DBClass db;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBClass();
        if (!IsPostBack)
        {
            Label2.Text = Request["ordid"];
            
            DataTable dt=db.GetTable("select * from OrderMaster where OrderID=" + Label2.Text);
            if (dt.Rows.Count > 0)
            {
                Label3.Text = dt.Rows[0][2].ToString();
                Label4.Text = dt.Rows[0][5].ToString();
                Label6.Text = dt.Rows[0][4].ToString();
              
            }
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Pay.aspx?oid=" + Label2.Text + "&oamt=" + Label4.Text);
        
    }

}
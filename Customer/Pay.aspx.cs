using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Security;
public partial class Customer_Pay : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        TextBox1.Text = Request["oid"];
        TextBox2.Text = Request["oamt"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db.Execute("Update OrderMaster set Status='Paid/Dispatched' where OrderID=" + TextBox1.Text);
        String email=Membership.GetUser().Email;
        SmtpClient sc = new SmtpClient();
        sc.DeliveryMethod = SmtpDeliveryMethod.SpecifiedPickupDirectory;
        sc.PickupDirectoryLocation ="d:\\mails";
        sc.Send(new MailMessage("admin@gmail.com", email, "Payment Confirmation", "Congratulations!!! Your Booking is successfully done."));
        Response.Redirect("Thanks.aspx");
        
    }
}
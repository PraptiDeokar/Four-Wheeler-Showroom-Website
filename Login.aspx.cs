using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Login : System.Web.UI.Page
{ 
    
    protected void Login1_LoggingIn1(object sender, LoginCancelEventArgs e)
    {
        if (Roles.IsUserInRole(Login1.UserName, "Administrator"))
        {
            Login1.DestinationPageUrl = "~/Admin/Home.aspx";
        }
        else if (Roles.IsUserInRole(Login1.UserName,"Customer"))
        {
            Login1.DestinationPageUrl = "~/Customer/Home.aspx";
        }        
        else
        {
            ErrorLabel.Text = "Invalid Username or password or User doesnot exists in Role";
            e.Cancel = true;
        }
        
    }
}
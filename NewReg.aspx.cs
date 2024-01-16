using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class NewAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CreateUserWizardStep ws = (CreateUserWizardStep)CreateUserWizard1.WizardSteps[0];
            Control c = ws.ContentTemplateContainer;
            TextBox t1 = c.FindControl("RegDateTextBox") as TextBox;
            t1.Text = DateTime.Now.ToString("MM/dd/yyyy");
        }
    }
   
    protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
    {
        Roles.AddUserToRole(CreateUserWizard1.UserName, "Customer");

        CreateUserWizardStep ws = (CreateUserWizardStep)CreateUserWizard1.WizardSteps[0];
        Control c = ws.ContentTemplateContainer;
        
        TextBox t1 = c.FindControl("ContactNoTextBox") as TextBox;
        Profile.Mobile = t1.Text;
     

        t1 = c.FindControl("RegDateTextBox") as TextBox;
        Profile.RegDate = t1.Text;

        t1 = c.FindControl("AddressTextBox") as TextBox;
        Profile.Address = t1.Text;

        Profile.Save();
    }
    protected void RegDateTextBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Answer_TextChanged(object sender, EventArgs e)
    {

    }
}
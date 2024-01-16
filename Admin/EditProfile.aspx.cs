using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            NameTextBox.Text = Profile.Name;
            AddressTextBox.Text = Profile.Address;
            PersonTextBox.Text = Profile.ContactPerson;
            MobileNoTextBox.Text = Profile.Mobile;
            PhoneTextBox.Text = Profile.Phone;
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.Name = NameTextBox.Text;
        Profile.Address = AddressTextBox.Text;
        Profile.ContactPerson = PersonTextBox.Text;
        Profile.Mobile = MobileNoTextBox.Text;
        Profile.Phone = PhoneTextBox.Text;
        Profile.Save();
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Company Profile is Updated...')", true);
       
    }
}
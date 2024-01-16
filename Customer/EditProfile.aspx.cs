using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataTable dt = db.GetTable("select * from CustomerMaster where userId='" + Membership.GetUser().ProviderUserKey.ToString() + "'");
            if (dt.Rows.Count > 0)
            {
                IDTextBox.Text = dt.Rows[0][0].ToString();
                NameTextBox.Text = dt.Rows[0][1].ToString();
                ContactNoTextBox.Text = dt.Rows[0][2].ToString();
                EmailTextBox.Text = dt.Rows[0][3].ToString();
                AddressTextBox.Text = dt.Rows[0][4].ToString();
                GenderRadioButtonList.SelectedValue = dt.Rows[0][5].ToString();
            }
            else
            {
                ContactNoTextBox.Text = Profile.Mobile;
                EmailTextBox.Text = Membership.GetUser().Email;
                AddressTextBox.Text = Profile.Address;
                NameTextBox.Text = Profile.UserName;           
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = db.GetTable("select * from CustomerMaster where userId='" + Membership.GetUser().ProviderUserKey.ToString() + "'");
        if (dt.Rows.Count > 0)
        {
            db.Execute("Update CustomerMaster set Name='" + NameTextBox.Text + "',ContactNo='" + ContactNoTextBox.Text + "',EmailId='" + EmailTextBox.Text + "',Address='" + AddressTextBox.Text + "',Gender='" + GenderRadioButtonList.SelectedValue + "' where UserId='" + Membership.GetUser().ProviderUserKey.ToString() + "'");
            ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Customer Profile is Updated...')", true);

        }
        else
        {
            db.Execute("Insert into CustomerMaster(Name,ContactNo,EmailId,Address,Gender,UserId) values('"+ NameTextBox.Text + "','" + ContactNoTextBox.Text + "','" + EmailTextBox.Text + "','" + AddressTextBox.Text + "','" + GenderRadioButtonList.SelectedValue + "','"+ Membership.GetUser().ProviderUserKey.ToString() + "')");
            ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Customer Profile is Saved...')", true);
        }
        
       
    }
}
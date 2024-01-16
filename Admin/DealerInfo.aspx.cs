using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DealerInfo : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fname = "";
        if (FileUpload1.HasFile)
        {
            fname = "~/DealerImages/"+FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(fname));
        }
        db.Execute("Insert into DealerMaster (Company,ContactPerson,ContactNo,Address,DealerImage) values('" + NameDropDownList.SelectedValue+"','"+PersonTextBox.Text+"','"+ContactNoTextBox.Text+"','"+AddressTextBox.Text+"','"+fname+"')");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Dealer Information is Saved Successfullys...')", true);
        NameDropDownList.SelectedIndex = -1;
        PersonTextBox.Text = "";
        ContactNoTextBox.Text = "";
        AddressTextBox.Text = "";
        
       
    }
    protected void AddressTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}
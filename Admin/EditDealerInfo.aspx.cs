using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_EditDealerInfo : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt=db.GetTable("select * from DealerMaster where Dealerid="+Request["id"]);
            if(dt.Rows.Count>0)
            {
                IdLabel.Text = dt.Rows[0][0].ToString();
                NameDropDownList.SelectedValue = dt.Rows[0][1].ToString();
                PersonTextBox.Text = dt.Rows[0][2].ToString();
                ContactNoTextBox.Text = dt.Rows[0][3].ToString();
                AddressTextBox.Text = dt.Rows[0][4].ToString();
                Image1.ImageUrl = dt.Rows[0][5].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fname = Image1.ImageUrl;
        if (FileUpload1.HasFile)
        {
            fname = "~/DealerImages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(fname));
        }
        db.Execute("Update DealerMaster set Company='" + NameDropDownList.SelectedValue + "',ContactPerson='" + PersonTextBox.Text + "',ContactNo='" + ContactNoTextBox.Text + "',Address='" + AddressTextBox.Text + "',DealerImage='" + fname + "' where DealerId=" + IdLabel.Text);
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Dealer Information is Updated Successfully...')", true);

       
    }
}
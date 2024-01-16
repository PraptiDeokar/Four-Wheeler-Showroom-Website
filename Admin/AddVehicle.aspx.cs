using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddVehicle : System.Web.UI.Page
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
            fname = "~/VehicleImage/"+FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(fname));
        }
        db.Execute("Insert into VehicleMaster (VehicleName,CompanyName,VehicleModel,VehicleType,Description,Cost,VehicleImage,Color,SpecificationSummary,status) values('" + NameTextBox.Text + "','"+ NameDropDownList.SelectedValue+"','"+ModelTextBox.Text+"','"+TypeDropDownList.SelectedValue+"','"+DescTextBox.Text+"',"+CostTextBox.Text+",'"+fname+"','"+ ColorTextBox.Text+"','"+ SpecTextBox.Text+"','InStock')");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Vehicle Information is Saved Successfullys...')", true);
        NameTextBox.Text = "";
        ModelTextBox.Text = "";
        TypeDropDownList.SelectedIndex = -1;
        DescTextBox.Text = "";
        CostTextBox.Text = "";
        ColorTextBox.Text = "";
        SpecTextBox.Text = "";
      



    }
}
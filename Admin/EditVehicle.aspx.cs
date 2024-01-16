using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_EditVehicle : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["id"] != null)
            {
                DataTable dt=db.GetTable("Select * from VehicleMaster where VehicleId=" + Request["id"]);
                if (dt.Rows.Count > 0)
                {
                    IdLabel.Text = dt.Rows[0][0].ToString();
                    NameDropDownList.Text = dt.Rows[0][1].ToString();
                    NameTextBox.Text = dt.Rows[0][2].ToString();
                    ModelTextBox.Text = dt.Rows[0][3].ToString();
                    TypeDropDownList.SelectedValue = dt.Rows[0][4].ToString();
                    DescTextBox.Text = dt.Rows[0][5].ToString();
                    CostTextBox.Text = dt.Rows[0][6].ToString();                    
                    Image1.ImageUrl = dt.Rows[0][7].ToString();
                    ColorTextBox.Text = dt.Rows[0][8].ToString();
                    SpecTextBox.Text = dt.Rows[0][9].ToString();

                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fname = Image1.ImageUrl;
        if (FileUpload1.HasFile)
        {
            fname = "~/VehicleImage/"+FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(fname));
        }
        db.Execute("Update VehicleMaster set CompanyName='"+NameDropDownList.SelectedValue+"',VehicleName='" + NameTextBox.Text + "',VehicleModel='"+ModelTextBox.Text+"',VehicleType='"+TypeDropDownList.SelectedValue+"',Description='" + DescTextBox.Text + "',Cost=" + CostTextBox.Text + ",VehicleImage='" + fname + "',Color='"+ColorTextBox.Text+"',SpecificationSummary='"+SpecTextBox.Text+"' where VehicleId="+IdLabel.Text);
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Vehicle Information is Updated Successfully...')", true);
        NameTextBox.Text = "";
        ModelTextBox.Text = "";
        TypeDropDownList.SelectedIndex = -1;
        DescTextBox.Text = "";
        CostTextBox.Text = "";
        ColorTextBox.Text = "";
        SpecTextBox.Text = "";
      
       
    }
}
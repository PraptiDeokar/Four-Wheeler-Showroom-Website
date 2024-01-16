using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_CustomerReportPage : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from VehicleMaster", db.cn);
        DataSet1 ds = new DataSet1();
        da.Fill(ds, "VehicleMaster");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}
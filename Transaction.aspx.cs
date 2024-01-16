using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Transactions : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        DBClass db = new DBClass();
       
        SqlDataAdapter da = new SqlDataAdapter("select * from bookCustCar",db.cn);
         DataSet2 sd=new DataSet2();
        da.Fill(sd,"bookCustCar");
       CrystalReportSource1.ReportDocument.SetDataSource(sd);
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}
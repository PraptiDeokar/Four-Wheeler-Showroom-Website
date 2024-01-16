using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public class DBClass
{
    public SqlConnection cn;
    //Connect to Server
	public DBClass()
	{
        cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["VehicleConnectionString"].ConnectionString;
        cn.Open();
	}
    //execute insert,update and delete commands
    public void Execute(String sql)
    {
        SqlCommand cmd = new SqlCommand(sql,cn);
        cmd.ExecuteNonQuery();
    }
    //execute select command and store their result in DataTable object
    public DataTable GetTable(String sql)
    {
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    //execute insert command and returns auto generated id such as product id
    public Object ExecuteCommandReturnID(String sql)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = sql;
        return cmd.ExecuteScalar();
    }
}
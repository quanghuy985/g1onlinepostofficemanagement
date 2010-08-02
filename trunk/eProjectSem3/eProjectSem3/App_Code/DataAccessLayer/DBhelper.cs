using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBhelper
/// </summary>
public class DBhelper
{
    public DBhelper()
    {
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();

    }

    public SqlConnection getConnect()
    {
          if (con == null || con.State == ConnectionState.Closed)
          {
              //String connect = @"Data Source=QUANGHUY-PC;Initial Catalog=TransServiceWebsite;User ID=sa;Password=huysoi1985";
              con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["callConnection"].ConnectionString);
              //con = new SqlConnection(connect);
              con.Open();
          }
          return con;
    }
   
  
    public void PrepareCommand( String SPName, List<SqlParameter> paramList)
    {
       
        cmd.Connection = this.getConnect();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = SPName;
        if (paramList != null)
        {
            foreach (SqlParameter param in paramList)
            {
                cmd.Parameters.Add(param);
            }
        }
    }
   
    public DataTable ExecuteQuerry(String SPName, List<SqlParameter> paramList)
    {

       
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        PrepareCommand( SPName, paramList);
        da.SelectCommand = cmd;
        da.Fill(dt);
        return dt;

    }
   
    public DataSet ExecuteQuerryReturnDataSet(String SPName, List<SqlParameter> paramList)
    {
        
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        PrepareCommand( SPName, paramList);
        da.SelectCommand = cmd;
        da.Fill(ds);
        return ds;
    }
 
   
    public int ExecuteQueryReturnInt(string sql, CommandType type)
    {
        
        cmd.CommandText = sql;
        cmd.CommandType = type;
        cmd.Connection = this.getConnect();
        int k = cmd.ExecuteNonQuery();
        return k;
    }
   

    public int ExecuteQueryReturnInt2(string sql, CommandType type, List<SqlParameter> list)
    {
        int k = 0;
       
        cmd.CommandText = sql;
        cmd.CommandType = type;
        cmd.Connection = this.getConnect();
        foreach (SqlParameter p in list)
        {
            cmd.Parameters.Add(p);
        }
        try
        {
            k = cmd.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {
            con.Close();
            throw ex;
        }

        return k;
    }

 
    public DataSet ExecuteDataSet(string sql, CommandType type)
    {
      
        cmd.CommandText = sql;
        cmd.CommandType = type;
        cmd.Connection = this.getConnect();
        SqlDataAdapter data = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        data.Fill(ds);
        return ds;
    }
 

	}

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
using System.Collections.Generic;
using System.Data.SqlClient;

/// <summary>
/// Summary description for CustomerBL
/// </summary>
public class CustomerBL
{

    DBhelper helper = new DBhelper();

	public CustomerBL()
	{
		
	}

    public DataTable AddCustomer(string username, string password, string fullname, string address, string email)
    {
        List<SqlParameter> list = new List<SqlParameter>();
        SqlParameter p = new SqlParameter();
        p = new SqlParameter("@cusUsername", SqlDbType.NVarChar);
        p.Value = username;
        list.Add(p);
        p = new SqlParameter("@cusPassword", SqlDbType.NVarChar);
        p.Value = password;
        list.Add(p);
        p = new SqlParameter("@cusFullname", SqlDbType.NVarChar);
        p.Value = fullname;
        list.Add(p);
        p = new SqlParameter("@cusAddress", SqlDbType.NVarChar);
        p.Value = address;
        list.Add(p);
        p = new SqlParameter("@cusEmail", SqlDbType.NVarChar);
        p.Value = email;
        list.Add(p);
        return helper.ExecuteQuerry("sp_AddCustomer", list);
    }

    public DataTable CheckExistCustomer(string username)
    {
        
        SqlParameter p = new SqlParameter();
        List<SqlParameter> list = new List<SqlParameter>();
        p = new SqlParameter("@cusUsername",SqlDbType.NVarChar);
        p.Value = username;
        list.Add(p);
        return helper.ExecuteQuerry("sp_CheckExistCustomer", list);
        
    }
}

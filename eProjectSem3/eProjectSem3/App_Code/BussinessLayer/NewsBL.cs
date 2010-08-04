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
using System.Collections.Generic;
/// <summary>
/// Summary description for NewsBL
/// </summary>
public class NewsBL
{
    DBhelper helper = new DBhelper();
    List<SqlParameter> list; 
	public NewsBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable ViewHotNews()
    {
        return helper.ExecuteQuerry("pc_ViewHotNews", null);
    }
    public DataTable View3News()
    {
        return helper.ExecuteQuerry("pc_View3News",null);
    }
    public DataTable view10News()
    {
        return helper.ExecuteQuerry("pc_View10News", null);
    }
    public DataTable viewNewsDetail(int newsID)
    {
        List<SqlParameter> list = new List<SqlParameter>();
        SqlParameter paraNewsID = new SqlParameter("@newsID", SqlDbType.Int);
        paraNewsID.Value = newsID;
        list.Add(paraNewsID);
        return helper.ExecuteQuerry("pc_viewNewsByID", list);
    }
}

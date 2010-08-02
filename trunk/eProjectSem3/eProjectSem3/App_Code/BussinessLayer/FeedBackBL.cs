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
/// Summary description for FeedBackBL
/// </summary>
public class FeedBackBL
{
    DBhelper helper = new DBhelper();
    List<SqlParameter> list;
	public FeedBackBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void InsertFeedBack(string content, string cusID)
    {
        list = new List<SqlParameter>();
        SqlParameter paraContent = new SqlParameter("@feedbackContent", SqlDbType.VarChar);
        SqlParameter paraCusID = new SqlParameter("@cusID", SqlDbType.VarChar);
        paraContent.Value = content;
        paraCusID.Value = cusID;
        list.Add(paraContent);
        list.Add(paraCusID);
        helper.ExecuteQuerry("pc_insertFeedBack", list);
    }
}

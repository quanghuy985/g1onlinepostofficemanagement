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

public class MagazineBL
{
    DBhelper helper = new DBhelper();
    DataTable dta = new DataTable();
    List<SqlParameter> list;
	public MagazineBL()
	{
		
	}
    public DataTable view_magazine()
    {
        return helper.ExecuteQuerry("pc_view_magazine", null);
    }
    public DataTable view_magazine_byID(int magazine_id) {
        
        list = new List<SqlParameter>();
        SqlParameter paraContent = new SqlParameter("@maga_ID", SqlDbType.Int);
        paraContent.Value = magazine_id;
        list.Add(paraContent);
      return  helper.ExecuteQuerry("pc_viewmagazine_byID", list);
      
      
    }
    public void intsert_Order(string cus_id,) { 
    
    }
}

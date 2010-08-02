using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class UAC_OldNewsDetail : System.Web.UI.UserControl
{
    private DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindGrid();
    }
    private void bindGrid()
    {
        NewsBL news = new NewsBL();
    }
    public void More(object sender, CommandEventArgs e)
    {
        Response.Redirect("NewsDetail.aspx?newsID=" + e.CommandArgument.ToString());
    }
}

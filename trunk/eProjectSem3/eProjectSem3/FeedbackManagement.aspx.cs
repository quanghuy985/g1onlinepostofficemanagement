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
using System.Data.SqlClient;

public partial class FeedbackManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindRepeater();
        }
    }
    public void bindRepeater()
    {
     string sqlSelect = "SELECT * FROM tblFeedBack";
     DBhelper helper = new DBhelper();
     SqlConnection connect = new SqlConnection();
     connect = helper.getConnect();
     SqlDataAdapter dtAdapter = new SqlDataAdapter(sqlSelect,connect);
     DataSet dsSet = new DataSet();
     dtAdapter.Fill(dsSet);
     connect.Close();
     rptFeedBackManagement.DataSource = dsSet;
     rptFeedBackManagement.DataBind(); 
    }
    public void ReplyFeedBack(object sender, CommandEventArgs e)
    {
        string OngHuyDay = e.CommandArgument.ToString();
        Response.Redirect("ReplyFeedBack.aspx?UserName=" + OngHuyDay);
    }
    public void DeactiveCus(object sender, CommandEventArgs e)
    {

        string OngHuyDay = e.CommandArgument.ToString();
        CustomerBL cusBL = new CustomerBL();
        cusBL.DeactiveCustomer(OngHuyDay);
        Response.Write("Deactive Complete");
    }
}


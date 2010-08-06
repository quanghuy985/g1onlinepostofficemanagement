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
public partial class ParcelPostOfficeFunction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindGridDDLCity();
    }
    protected void bindGridDDLCity()
    {
        DataTable dt;
        BranchBO branch = new BranchBO();
        dt = branch.getCity();
        ddlCity.DataSource = dt;
        ddlCity.DataTextField = "branchCity";
        ddlCity.DataValueField = "branchCity";
        ddlCity.DataBind();
        ddlCityTo.DataSource = dt;
        ddlCityTo.DataTextField = "branchCity";
        ddlCityTo.DataValueField = "branchCity";
        ddlCityTo.DataBind();
  }
    [System.Web.Services.WebMethod]
    public static String[] GetDistrictByCity(string city)
    {
        BranchBO branch = new BranchBO();
        DataTable dtt;
        dtt = branch.getDistrictByCity(city);
        int j = dtt.Rows.Count;
        string[] chuoi = new string[j];
        for (int i = 0; i < j; i++)
        {
            chuoi[i] = dtt.Rows[i].ItemArray[0].ToString();
        }
        return chuoi;
    }
}

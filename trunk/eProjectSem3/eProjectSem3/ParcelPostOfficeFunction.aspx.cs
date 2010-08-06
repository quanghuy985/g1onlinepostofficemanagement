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
    [System.Web.Services.WebMethod]
    public static String CalculateLocation(string fromCity,string toCity)
    {
        DataTable dt;
        DataTable dtFromArea;
        DataTable dtToArea;
        string location = null;
        string fromArea = null;
        string toArea = null;
        BranchBO branch = new BranchBO();
        dtFromArea = branch.getAreaByCity(fromCity);
        if (dtFromArea.Rows.Count != 0)
        {
            fromArea = dtFromArea.Rows[0].ItemArray[0].ToString();
        }
        dtToArea = branch.getAreaByCity(toCity);
        if (dtToArea.Rows.Count != 0)
        {
            toArea = dtToArea.Rows[0].ItemArray[0].ToString();
        }
        if (fromArea.Equals(toArea))
        {
            location = "In Area";
        }
        else
        {
            ParcelPostBO parcelPost = new ParcelPostBO();
           dt= parcelPost.GetServiceDetailParcelPostFromLocation(fromArea, toArea);
            location = dt.Rows[0].ItemArray[0].ToString();

        }
        return location;
    }
}

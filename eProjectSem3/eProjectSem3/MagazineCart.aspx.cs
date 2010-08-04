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

public partial class MagazineCartaspx : System.Web.UI.Page
{
    ArrayList cart;
    int month;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }
    public void deleteCart(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());
        cart = (ArrayList)Session["ShoppingCart"];
        int n = cart.Count;
        for (int i = 0; i < n; i++)
        {
            if (((MagazineEN)cart[i]).MagazineDailyID == id)
            {
                cart.RemoveAt(i);
                Session["ShoppingCart"] = cart;
                bindGrid();
                break;
            }
        }
    }
    private void bindGrid()
    {
        cart = (ArrayList)Session["ShoppingCart"];
        int n;
        if (cart == null || cart.Count == 0)
        {

          //  Label1.Text = "Bạn chưa đặt vé nào";
            return;
        }
        else
            n = cart.Count;

        MagazineEN[] bk = new MagazineEN[n];
        for (int i = 0; i < n; i++)
        {
            bk[i] = (MagazineEN)cart[i];
           // sum += bk[i].tranfees;
        }
        rpt_mg_cart.DataSource = bk;
        rpt_mg_cart.DataBind();
      //  lblSum.Text = sum.ToString() + " .VND";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkOutMagazine.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
   
        try
        {
            month = Convert.ToInt32(((TextBox)sender).Text);
            lblError.Text = "";
        }
        catch (Exception)
        {
            lblError.Text = "Bạn phải nhập vào 1 số.";
            ((TextBox)sender).Focus();
            return;
        }
    
    }
    public void updateCart(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());
        cart = (ArrayList)Session["ShoppingCart"];
        int n = cart.Count;
        MagazineEN bk=new MagazineEN();
        for (int i = 0; i < n; i++)
        {
            bk = (MagazineEN)cart[i];
            if (bk.MagazineDailyID == id)
            {
                cart.RemoveAt(i);
                bk.MonthMagazineDaily = month;
                cart.Add(bk);
                Session["ShoppingCart"] = cart;
                bindGrid();
                break;
            }
        }
    }
}

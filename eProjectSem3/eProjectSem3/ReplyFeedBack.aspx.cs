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
using System.Net;
using System.Net.Mail;

public partial class ReplyFeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void sendMail(string Email, string UserName,string Content)
    {
        MailMessage message = new MailMessage();
        message.From = new MailAddress("onlinepostofficewebmaster@gmail.com");
        message.To.Add(new MailAddress(Email));
        message.Subject = "Hey! Man";
        message.Body = "Reply FeedBack:" + UserName + " Content :" + Content;
        SmtpClient client = new SmtpClient();
        client.EnableSsl = true;
        client.Send(message);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string UserName = Request.QueryString["UserName"];
        CustomerBL cus = new CustomerBL();
        DataTable dtTable = new DataTable();
        dtTable = cus.CheckExistCustomer(UserName);
        string Email;
        string ContentReply;
        ContentReply = txtContent.Text;
            Email = dtTable.Rows[0].ItemArray[4].ToString();
            sendMail(Email, UserName,ContentReply);
            lbInfo.Text = "Send mail to " + Email +" of UserName : "+UserName+ " complete!";

        

    }
}

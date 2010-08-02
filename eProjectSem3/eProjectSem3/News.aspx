<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>
<%@ Register Src="~/UAC/NewNews.ascx" TagName="ListNews" TagPrefix="uc3" %>
<%@ Register Src="~/UAC/ListNewsFooter.ascx" TagName="ListNewsFooter" TagPrefix="uc2" %>
<%@ Register Src="~/UAC/OldNewsDetail.ascx" TagName="ListOldNewsDetail" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td style="width:100%">
                 <uc3:ListNews ID="ListNews1" runat="server" />
                   </td>
                   <td>
                   </td>
                <td style="width:100%">
                    <uc1:ListOldNewsDetail ID="ListNews3" runat="server" /></td>
            </tr>
            </table>
        <table>
        <tr>
        <td>
        <uc2:ListNewsFooter ID="ListNews2" runat="server" />
        </td>
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

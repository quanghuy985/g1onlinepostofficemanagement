<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackManagement.aspx.cs" Inherits="FeedbackManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server" >
    <div align="center" >
    
        <asp:Label ID="lbFeedBack" runat="server" Text="FeedBack Management"></asp:Label>
        <br />
    
        <asp:Repeater ID="rptFeedBackManagement" runat="server">
         <HeaderTemplate>
        <table border="1" cellpadding="2">
            <tr>
            <td>FeedID</td>
            <td>FeedContent</td>
            <td>CusUserName</td>
            <td>AdminUserName</td>       
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><%# DataBinder.Eval(Container.DataItem, "feedID")%></td>
            <td><asp:TextBox runat="server" ID="txtContent"  TextMode="MultiLine" Text='<%# DataBinder.Eval(Container.DataItem,"feedContent") %>' /></td>
            <td><%# DataBinder.Eval(Container.DataItem, "cusUserName")%></td>
            <td><%# DataBinder.Eval(Container.DataItem, "adminUserName")%></td>
            <td>
                    <asp:Button ID="btnReply" runat="server" Text="Reply" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "cusUserName")%>' OnCommand="ReplyFeedBack" /></td>
            <td>
                    <asp:Button ID="btnDeactive" runat="server" Text="DeactiveCustomer" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "cusUserName")%>' OnCommand="DeactiveCus" /></td>
        </tr>
 
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
        </asp:Repeater>
    
        <asp:Label ID="lbWarring" runat="server" 
            Text="Các Phần Của Em Làm Đều Chạy Ngon Lành Nhưng Ko Commit được Cơ Sở Dữ Liệu ai Update về chạy thử ko được là do thiếu Procedure nên đừng có xóa em Bổ sung vào máy Bảo vệ sau!!!"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MagazineCart.aspx.cs" Inherits="MagazineCartaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater runat="server" ID="rpt_mg_cart">
        <HeaderTemplate>
            <table id="tb" border="1" cellpadding="2" width="100%" align="center">
                <tr >
                <th></th>
                <th></th>
                <th style="color:Black">
                    Cac tap chi da dat
                </th>
                <th></th>
                <th></th>
                </tr>
                <tr align="center">
                    <th style="color: Black">
                        Magazine ID</th>
                    <th style="color: Black">
                        Magazine Nmae</th>
                    <th style="color: Black">
                        Gia</th>
                    <th style="color: Black">
                        Thang</th>
                        <th style="color: Black">
                            Thao tác</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="color: Black">
                    <%# DataBinder.Eval(Container.DataItem, "MagazineDailyID")%></td>
                <td style="color: Black">
                    <%# DataBinder.Eval(Container.DataItem, "magazineName")%></td>
                <td style="color: Black">
              </td>
                <td style="color: Black">
                    <asp:TextBox ID="TextBox1" runat="server" Width=30%></asp:TextBox>
</td>
                    <td style="color:Black">
                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "magazineDailyID")%>' OnCommand="deleteCart" />
                    </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>

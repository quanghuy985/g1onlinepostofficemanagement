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
                        Service</th>
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
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "MonthMagazineDaily", "{0: ###,###}") %>' Width=30% ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
</td>
                    <td style="color:Black">
                    <asp:Button ID="btnUpdate" runat="server" Text="C&#7853;p nh&#7853;t" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "MagazineDailyID")%>' OnCommand="updateCart" />
                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "magazineDailyID")%>' OnCommand="deleteCart" />
                    </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Check Out" style="width: 94px" />
        <br />
        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
        <br />
    </div>
    </form>
</body>
</html>

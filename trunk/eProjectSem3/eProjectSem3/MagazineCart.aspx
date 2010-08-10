<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MagazineCart.aspx.cs" Inherits="MagazineCartaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style3
        {
            width: 43px;
        }
        .style4
        {
            width: 100px;
            height: 36px;
        }
        .style5
        {
            height: 36px;
        }
        </style>
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
        <asp:Panel ID="Panel1" runat="server" Height="166px" Visible="False" 
            Width="271px">
            <table style="width: 50%; height: 98px;">
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td align="center">
                        Thong tin khach hang</td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Service Detail</td>
                    <td colspan="2" class="style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Adress</td>
                    <td colspan="2" style="color: #FF0000">
                        <asp:TextBox ID="txtadress" runat="server" Width="210px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtadress" ErrorMessage="pleade insert full adress"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1" align="center" colspan="3">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
        <br />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkOutMagazine.aspx.cs" Inherits="checkOutMagazine" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .style2
        {
            width: 21px;
        }
        .style3
        {
            width: 43px;
        }
        .style4
        {
            width: 100px;
            height: 38px;
        }
        .style5
        {
            height: 38px;
        }
        .style6
        {
            width: 21px;
            height: 38px;
        }
        .style7
        {
            width: 43px;
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 45%; height: 387px;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    Thong tin khach hang</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Service Detail</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    parcelFromAddress</td>
                <td colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    parcelFromDistrict</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    parcelFromCity</td>
                <td class="style5">
                </td>
                <td class="style6">
                </td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    parcelToAddress</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    parcelToDistrict</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    parcelToCity</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

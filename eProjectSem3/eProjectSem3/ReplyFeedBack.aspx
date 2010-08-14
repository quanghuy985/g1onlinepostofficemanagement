<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReplyFeedBack.aspx.cs" Inherits="ReplyFeedBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lbIntro" runat="server" Font-Bold="True" 
                        Text="Reply FeedBack Customer"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbContent" runat="server" Text="Content"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="txtContent" runat="server" Height="141px" TextMode="MultiLine" 
                        Width="348px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rqfContent" runat="server" 
                        ControlToValidate="txtContent" Display="Dynamic" 
                        ErrorMessage="Content Can't  blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="3">
                    <asp:Label ID="lbInfo" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="..."></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

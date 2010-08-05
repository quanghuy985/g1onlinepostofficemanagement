<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="eProjectSem3_eProjectSem3_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    
        <table style="width: 100%; height: 185px;">
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    <asp:Label ID="lbIntro" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Online Post Office"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    <asp:Label ID="lbLogin" runat="server" Font-Bold="True" Text="Login"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Label ID="lbUserName" runat="server" Text="User Name:"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="txtUserName" runat="server" Width="200px">User Name</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Label ID="lbPassword" runat="server" Text="Password:"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 4px" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" Width="60px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" Text="Reset" Width="60px" />
&nbsp;&nbsp;
                    <asp:Button ID="btnCreateAccount" runat="server" 
                        onclick="btnCreateAccount_Click" Text="Create Account" />
                    <asp:LinkButton ID="lbtnforgetPassword" runat="server">Forget Password!!!</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lbError" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="..."></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

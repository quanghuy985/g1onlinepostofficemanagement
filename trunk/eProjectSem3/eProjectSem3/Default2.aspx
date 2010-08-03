<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 391px;
        }
    </style>

    <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
    function click(id){
           
             
                   $("#hiser").hide();
                   $("#loader").load("NewsDetail.aspx",id);
                   return false;
               
               }
            
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="loader">
    <a id="LinkButt" href="#">sadas</a>
    <div id="hiser">
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Repeater ID="rptNews" runat="server">
    <HeaderTemplate>
    <table width="50%">
    <tr>
    
    <td style="width:10%" align="left">
    Hot News >>.
    </td>
    <hr />
    </tr>
    </table>
    </HeaderTemplate>
    <ItemTemplate>
    <div id="content">
        <div style="float:left; width: 20px " id="Loader">
       <table style="width: 20px; height: 20px;">
            <tr>
                <td align="center"> <img alt="Không có ảnh" width="300px" height="200px"  src="images/<%#DataBinder.Eval(Container.DataItem, "newsImage")%>" /></td>
            </tr>
            <tr>
                <td align="center" style="font-style:italic;font-family:Times New Roman;">
                   Brief :<asp:LinkButton ID="lbtMore2" runat="server"  Font-Bold="True" Font-Overline="false" Font-Underline="false" ForeColor="Brown"> <%# DataBinder.Eval(Container.DataItem, "newsTitle")%></asp:LinkButton> </td>
  
                <input id="Button1" type="button" value="button" onclick="click(<%#DataBinder.Eval(Container.DataItem, "newsID")%>)" />
            </tr>
            <tr>
             <td align="center"> <%# DataBinder.Eval(Container.DataItem, "newsBrief")%>...<asp:LinkButton ID="lbtMore" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "newsID")%>' OnCommand="More" Font-Underline="false"> More...</asp:LinkButton></td>
            </tr>
           
            <hr />       
        </table>
            
        </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
    
       
    </FooterTemplate>
</asp:Repeater></td>
                <td>
                    <asp:Repeater ID="rptNewsFooter" runat="server">
    <HeaderTemplate>
    <table style="width:100%">
   <hr />
   <tr>
   <td style="width:5%"></td>
   <td align="left" style="width:50%">
   Old News :
   </td>
   <td></td>
   </tr>
    </table>
    </HeaderTemplate>
    <ItemTemplate>
        <div style="float:left; width:100% ">
       <table style="width: 50%">
            <tr>
            <td style="width:5%"></td>
                <td align="left"  valign="middle" style="width:50%;font-size:smaller; font-style:oblique;font-family:Times New Roman;"><li>
                   <asp:LinkButton ID="lbtMore2" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "newsID")%>' OnCommand="More" Font-Bold="True" Font-Overline="false" Font-Underline="false" ForeColor="Brown"> <%# DataBinder.Eval(Container.DataItem, "newsTitle")%></asp:LinkButton></li>  </td>
      
          </tr>
        </table>
        </div>
        
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
    </asp:Repeater>
    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Repeater ID="rptListNewsFooter" runat="server">
    <HeaderTemplate>
    <table>
    <tr>
    
    <td style="width:100%" align="center">
    Attention News >>>
    </td>
    <hr />
    </tr>
    </table>
    </HeaderTemplate>
    <ItemTemplate>
        <div style="float:left; width: 30% ">
       <table style="width: 100%; height: 141px;">
            <tr>
                <td align="center"> <img alt="Không có ảnh" width="100"  src="images/<%#DataBinder.Eval(Container.DataItem, "newsImage")%>" /></td>
                 <td align="center" style="font-style:italic;font-family:Times New Roman;">
                   Brief :<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "newsID")%>' OnCommand="More" Font-Bold="True" Font-Overline="false" Font-Underline="false" ForeColor="Brown"> <%# DataBinder.Eval(Container.DataItem, "newsTitle")%></asp:LinkButton> </td>
            </tr>
           
           
            <hr />       
        </table>
            
        </div>
        
    </ItemTemplate>
    <FooterTemplate>
    
       
    </FooterTemplate>
</asp:Repeater></td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </div>
    </form>
</body>
</html>

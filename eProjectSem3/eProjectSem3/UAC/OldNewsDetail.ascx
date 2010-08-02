<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OldNewsDetail.ascx.cs" Inherits="UAC_OldNewsDetail" %>
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
    
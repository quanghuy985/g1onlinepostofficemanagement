<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ListNewsFooter.ascx.cs" Inherits="UAC_ListNewsFooter" %>
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
</asp:Repeater>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewNews.ascx.cs" Inherits="UAC_NewNews" %>
<style type="text/css">
    .style1
    {
        height: 728px;
        width:400px;
    }
</style>
<table>
<tr>

<asp:Panel ID="pnlResults" runat="server" Visible="true">
<asp:Repeater ID="rptNews" runat="server">
    <HeaderTemplate>
    <table>
    <tr>
    
    <td style="width:100%" align="center">
    Hot News >>.
    </td>
    <hr />
    </tr>
    </table>
    </HeaderTemplate>
    <ItemTemplate>
        <div style="float:left; width: 30% ">
       <table style="width: 100%; height: 141px;">
            <tr>
                <td align="center"> <img alt="Không có ảnh" width="300"  src="images/<%#DataBinder.Eval(Container.DataItem, "newsImage")%>" /></td>
            </tr>
            <tr>
                <td align="center" style="font-style:italic;font-family:Times New Roman;">
                   Brief :<asp:LinkButton ID="lbtMore2" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "newsID")%>' OnCommand="More" Font-Bold="True" Font-Overline="false" Font-Underline="false" ForeColor="Brown"> <%# DataBinder.Eval(Container.DataItem, "newsTitle")%></asp:LinkButton> </td>
                 
            </tr>
            <tr>
             <td align="center"> <%# DataBinder.Eval(Container.DataItem, "newsBrief")%>...<asp:LinkButton ID="lbtMore" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "newsID")%>' OnCommand="More" Font-Underline="false"> More...</asp:LinkButton></td>
            </tr>
           
            <hr />       
        </table>
            
        </div>
        
    </ItemTemplate>
    <FooterTemplate>
    
       
    </FooterTemplate>
</asp:Repeater>

</asp:Panel>

</tr>
<tr>
<td>


<asp:Panel ID="pnlNoResults" runat="server" Visible="false">
    <div>
    
    </div>
   
</asp:Panel>
</td>
</tr>
</table>


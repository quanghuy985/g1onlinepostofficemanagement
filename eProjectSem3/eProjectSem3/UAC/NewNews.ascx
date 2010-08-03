<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewNews.ascx.cs" Inherits="UAC_NewNews" %>
<table width="50%">
<tr>
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
        <div style="float:left; width: 50% ">
       <table style="width: 50%; height: 141px;">
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

</tr>
<tr>
<td>
</td>
</tr>
</table>


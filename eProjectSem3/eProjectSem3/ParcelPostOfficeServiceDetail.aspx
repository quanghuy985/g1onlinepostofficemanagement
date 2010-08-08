<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParcelPostOfficeServiceDetail.aspx.cs" Inherits="ParcelPostOfficeServiceDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/jquery-ui[1].css" rel="stylesheet" type="text/css"/>
  <script src="js/jquery.min.cache" type="text/javascript"></script>
  <script src="js/jquery-ui.min.cache" type="text/javascript"></script>
  
  <script type="text/javascript">
  $(document).ready(function() {
    $("#accordion").accordion();
  });
  </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:100%">
        <tr>
        <td >
        </td>
        <td style="width:50%">
     
        <h3>
        Introduction about ourself :
        </h3>
       
        We warmly introduce for you about some parcel post office funtion, My Post Office very thank to you because you chose my service.
        We hope these functions easy to use with you, If you have some feedback please chose feedback function to help us can improve application.
        </td>
        <td>
        </td>
        </tr>
    
        <tr>
        <td >
            &nbsp;</td>
        <td style="width:50%">
        <%-- <asp:Repeater ID="rptSericeDetail" runat="server">
             <HeaderTemplate> --%>
             <div id="accordion">           
           <%-- </HeaderTemplate>
            <ItemTemplate>
             --%>
                    <h3><a href="#">Gán giá trị service Detail Name Vào đây<%--<%# DataBinder.Eval(Container.DataItem, "serviceDetailName")%>--%></a></h3>
                   
                 <div >
		                  <p> Gán Nội dung serive detail Vào đây
                          <%--<%# DataBinder.Eval(Container.DataItem, "serviceDetailDescription")%>--%>
                          
                          </p>
                          <p>
                          Cho Ảnh vào khu vực này
                           <%--<img alt="Không có ảnh" width="20%"  src="images/<%#DataBinder.Eval(Container.DataItem, "serviceDetailImage")%>" />--%>
                          </p>
                 </div>
                 <h3><a href="#">Gán giá trị service Detail Name 2 Vào đây</a></h3>
                 <div >
		                  <p> Gán Nội dung serive detail Vào đây
                          <%--<%# DataBinder.Eval(Container.DataItem, "serviceDetailDescription")%>--%>
                          
                          </p>
                          <p>
                          Cho Ảnh vào khu vực này
                           <%--<img alt="Không có ảnh" width="20%"  src="images/<%#DataBinder.Eval(Container.DataItem, "serviceDetailImage")%>" />--%>
                          </p>
                 </div>
                 </div>
   <%-- </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
    
</asp:Repeater>--%>
           
            </td>
        <td>
            &nbsp;</td>
        </tr>
    
    </table>
    </div>
    </form>
</body>
</html>

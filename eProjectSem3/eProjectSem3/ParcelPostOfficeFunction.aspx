<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParcelPostOfficeFunction.aspx.cs" Inherits="ParcelPostOfficeFunction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        var $j = jQuery.noConflict();
        $j(document).ready(function() {
            //Set Option cho Parcel
            $j("#txtAddressTo").change(function() {

                $j.ajax({
                    type: "POST",
                    url: "ParcelPostOfficeFunction.aspx/CalculateLocation",
                    data: "{type:'huyhcker','fromCity':'" + $j("#<%=ddlCity.ClientID%>").val() + "','toCity':'" + $j("#<%=ddlCityTo.ClientID%>").val() + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(message) {
                    $j("#checkOption").text(message.d);
                    }
                });
                $j("#pnDetail").slideDown("slow");
            });



            // Kiem Xem Gui Di nuoc ngoai hay trong nuoc de cho panel xuat hien
            $j("#cbSendTo").change(function() {
                if ($j("#cbSendTo:checked").length >= 1) {


                    $j("#pnSendtoforeign").slideDown("slow");
                    $j("#pnTo").hide();
                }
                else {
                    $j("#pnSendtoforeign").hide();
                    $j("#pnTo").slideDown("slow");
                }
            });
            // Make the AJAX call to the WebMethod when the textbox loses focus
            $j("#ddlCity").change(function() {
                if ($j("#<%=ddlCity.ClientID%>").val() != "") {

                    $j.ajax({
                        type: "POST",
                        url: "ParcelPostOfficeFunction.aspx/GetDistrictByCity",
                        data: "{'city':'" + $j("#<%=ddlCity.ClientID%>").val() + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(message) {
                            document.getElementById("ddlDistrict").options.length = 0;
                            for (var i = 0; i < message.d.length; i++) {

                                var opt = document.createElement("option");
                                opt.text = message.d[i];
                                opt.value = message.d[i];
                                document.getElementById("ddlDistrict").options.add(opt);

                            }
                            $j("#checkReturn").text("Loi");
                        },
                        error: function(errormessage) {
                            //Hiển thị lỗi nếu xảy ra
                            $j("#checkReturn").text(errormessage.responseText);
                        }
                    });
                }
            });


            // Tao su kien load data cho ddlDistrictTo

            $j("#ddlCityTo").change(function() {
                if ($j("#<%=ddlCityTo.ClientID%>").val() != "") {

                    $j.ajax({
                        type: "POST",
                        url: "ParcelPostOfficeFunction.aspx/GetDistrictByCity",
                        data: "{'city':'" + $j("#<%=ddlCityTo.ClientID%>").val() + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(message) {
                            document.getElementById("ddlDistrictTo").options.length = 0;
                            for (var i = 0; i < message.d.length; i++) {

                                var opt = document.createElement("option");
                                opt.text = message.d[i];
                                opt.value = message.d[i];
                                document.getElementById("ddlDistrictTo").options.add(opt);

                            }
                            $j("#checkReturn").text("Loi");
                        },
                        error: function(errormessage) {
                            //Hiển thị lỗi nếu xảy ra
                            $j("#checkReturn").text(errormessage.responseText);
                        }
                    });
                }
            });
        });
 </script>
  <style type="text/css">
       
       #pnSendtoforeign
       {
       	display:none;
       } 
       #pnDetail
       {
       	display:none;
       }    
       
            
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="vertical-align:middle; width:100%">
    <table width="100%">
        <tr>
            <td style="width:30%">
            </td>
            <td style=" width:40%">
                    <asp:Panel ID="pnFrom" runat="server" GroupingText="From" Width="100%">
                        <table style="width:100%">
                            <tr>
                                <td style="width:10%">
                                    <asp:Label ID="lbFrom" Text="City :" runat="server"></asp:Label>
                                </td>
                                <td style="width:50%">
                                    <asp:DropDownList ID="ddlCity" runat="server" Width="100%" AppendDataBoundItems="true">
                                    <asp:ListItem>--- Please select city ---</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </td>
                                <td style="width:40%">
                                </td>
                            </tr>
                            
                            
                                
                                    <tr>
                                         <td>                                    
                                             <asp:Label ID="lbDistrict" runat="server" Text="District :"></asp:Label>                                    
                                         </td>
                                         <td>
                                              <asp:DropDownList ID="ddlDistrict" runat="server" Width="100%"></asp:DropDownList>
                                         </td>
                                         <td>
                                         </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbAddress" runat="server" Text="Address :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddress"  Width="100%"  runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                  <tr>
                                    <td>
                                        <asp:Label ID="lbSendto" runat="server" Text="Send To :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="cbSendTo" Text="Foreign Country" runat="server" />
                                    </td>
                                    <td>
                                    </td>
                                  </tr>
                               
                                
                        </table>
                    </asp:Panel>
              </td>
              <td style="width:30%">
              </td>
        </tr>
        <tr>
                <td>
                </td>
                <td>
                    <asp:Panel ID="pnSendtoforeign" runat="server" GroupingText="Foreign Address">
                        <table style="width:100%">
                        <tr>
                            <td style="width:10%">
                                <asp:Label ID="lbAddressForeign" runat="server" Text="Address :"></asp:Label>
                            </td>
                            <td style="width:50%">
                                <asp:TextBox ID="txtAddressForeign" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Panel ID="pnTo" runat="server" GroupingText="To">
                    <table style="width:100%">
                        <tr>
                            <td style="width:10%">
                                <asp:Label ID="lbCityTo" runat="server" Text="City :"></asp:Label>
                            </td>
                            <td style="width:50%">                                
                                <asp:DropDownList ID="ddlCityTo" runat="server" Width="100%" AppendDataBoundItems="true">
                                <asp:ListItem>--- Please select city ---</asp:ListItem>
                                </asp:DropDownList>                                
                            </td>
                            <td>
                            </td>
                        </tr>
                     
                            
                                <tr>
                                    <td>                                    
                                             <asp:Label ID="lbDistrictTo" runat="server" Text="District :"></asp:Label>                                    
                                         </td>
                                         <td>
                                              <asp:DropDownList ID="ddlDistrictTo" runat="server" Width="100%"></asp:DropDownList>
                                         </td>
                                         <td>
                                         </td>
                                </tr>
                                <tr>
                                        <td>
                                            <asp:Label ID="lbAddressTo" runat="server" Text="Address :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddressTo" Width="100%" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                </tr>
                          
                      
                    </table>
                </asp:Panel>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Panel ID="pnDetail" runat="server" GroupingText="Detail">
                    <table style="width:100%">
                        <tr>
                            <td style="width:10%">
                                <asp:Label ID="lbLocation" runat="server" Text="Option :"></asp:Label>
                            </td>
                            <td style="width:50%">
                                <span id="checkOption"></span>
                            </td>
                            <td>
                            </td>
                        </tr>
                    
                    </table>
                </asp:Panel>
            </td>
            <td>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

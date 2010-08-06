<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParcelPostOfficeFunction.aspx.cs" Inherits="ParcelPostOfficeFunction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        var $j = jQuery.noConflict();
        $j(document).ready(function() {
            // Make the AJAX call to the WebMethod when the textbox loses focus
        $j("#ddlCity").change(function() {
        if ($("#ddlCity").val() != "") {
                    $("#pnDistrictFrom").show();
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
                } else {
                    $("#pnDistrictFrom").hide();
                }
            });
            $j("#txtAddress").blur(function() {
            if ($("#txtAddress").val() != "") {
                $("#pnTo").show();
                }
                else {
                    $("#pnTo").hide();
                }
            });
        });
 </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="vertical-align:middle; width:100%">
    <table width="100%">
        <tr>
            <td style="width:30%">
            </td>
            <td style="40%">
                    <asp:Panel ID="pnFrom" runat="server" GroupingText="From" Width="100%">
                        <table style="width:100%">
                            <tr>
                                <td style="width:10%">
                                    <asp:Label ID="lbFrom" Text="City :" runat="server"></asp:Label>
                                </td>
                                <td style="width:50%">
                                    <asp:DropDownList ID="ddlCity" runat="server" Width="100%"></asp:DropDownList>
                                </td>
                                <td style="width:40%">
                                </td>
                            </tr>
                            <asp:Panel ID="pnDistrictFrom" runat="server" Width="100%">
                                
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
                                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                  
                                </asp:Panel>
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
                <asp:Panel ID="pnTo" runat="server" GroupingText="To">
                    <table style="width:100%">
                        <tr>
                            <td style="width:10%">
                                <asp:Label ID="lbCityTo" runat="server" Text="City :"></asp:Label>
                            </td>
                            <td style="width:50%">                                
                                <asp:DropDownList ID="ddlCityTo" runat="server" Width="100%">
                                </asp:DropDownList>                                
                            </td>
                            <td>
                            </td>
                        </tr>
                        <asp:Panel ID="pnDistrictTo" runat="server">
                            
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
                                            <asp:TextBox ID="txtAddressTo" runat="server"></asp:TextBox>
                                        </td>
                                </tr>
                          
                        </asp:Panel>
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

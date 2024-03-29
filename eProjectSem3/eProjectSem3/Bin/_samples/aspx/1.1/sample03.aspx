<%@ Page language="c#" Codebehind="sample03.aspx.cs" AutoEventWireup="false" Inherits="FredCK.FCKeditorV2.Samples.Sample03" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--
 * FCKeditor - The text editor for Internet - http://www.fckeditor.net
 * Copyright (C) 2003-2008 Frederico Caldeira Knabben
 *
 * == BEGIN LICENSE ==
 *
 * Licensed under the terms of any of the following licenses at your
 * choice:
 *
 *  - GNU General Public License Version 2 or later (the "GPL")
 *    http://www.gnu.org/licenses/gpl.html
 *
 *  - GNU Lesser General Public License Version 2.1 or later (the "LGPL")
 *    http://www.gnu.org/licenses/lgpl.html
 *
 *  - Mozilla Public License Version 1.1 or later (the "MPL")
 *    http://www.mozilla.org/MPL/MPL-1.1.html
 *
 * == END LICENSE ==
 *
 * Sample page.
--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>FCKeditor - Sample</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />
	<link href="../sample.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		pre { background-color: #f5f5f5; padding: 5px; border: #d3d3d3 1px solid; }
	</style>
</head>
<body>
	<form runat="server">
		<h1>
			FCKeditor - ASP.NET - Sample 3</h1>
		<div>
			This sample shows how to change the editor toolbar.
		</div>
		<hr />
		<table cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td style="height: 21px">
					Select the toolbar to load:&nbsp;
				</td>
				<td style="height: 21px">
					<asp:DropDownList ID="cmbToolbars" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cmbToolbars_SelectedIndexChanged">
						<asp:ListItem Selected="True">Default</asp:ListItem>
						<asp:ListItem>Basic</asp:ListItem>
					</asp:DropDownList>&nbsp;</td>
			</tr>
		</table>
		<p id="PostedAlertBlock" style="color: Red" runat="server" visible="false">
			The posted data has been printed at the bottom of the page.
		</p>
		<div style="margin-top: 10px;">
			<!---
				Here we have the FCKeditor component tag. It has been created
				by dragging the FCKeditor icon from the toolbar to the page, in design mode.
			--->
			<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
			</FCKeditorV2:FCKeditor>
		</div>
		<p>
			<asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
		</p>
		<div id="PostedDataBlock" runat="server" visible="false">
			<p>
				Posted data:
			</p>
			<pre><asp:Label ID="LblPostedData" runat="server"></asp:Label></pre>
		</div>
	</form>
</body>
</html>

<%@ Page Language="C#" MasterPageFile="../../masterpages/umbracoPage.Master" AutoEventWireup="true" CodeBehind="GettingStarted.aspx.cs" Inherits="uImageResizer.plugins.uImageResizer.GettingStarted" ValidateRequest="False" %>
<%@ Register TagPrefix="umb" Namespace="umbraco.uicontrols" Assembly="controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

	<umb:UmbracoPanel runat="server" ID="UmbracoPanel1" Text="uImageResizer" hasMenu="true">
		
	    <div ID="document" runat="server"></div>

	</umb:UmbracoPanel>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server"></asp:Content>

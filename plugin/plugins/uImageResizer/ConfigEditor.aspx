<%@ Page Language="C#" MasterPageFile="../../masterpages/umbracoPage.Master" AutoEventWireup="true" Codebehind="ConfigEditor.aspx.cs" Inherits="uImageResizer.ConfigEditor" ValidateRequest="False" %>
<%@ Register TagPrefix="umb" Namespace="umbraco.uicontrols" Assembly="controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

	<umb:UmbracoPanel runat="server" ID="UmbracoPanel1" Text="uImageResizer" hasMenu="true">
		
		<umb:Pane runat="server" ID="Pane1" Text="ImageResizer.Net Configuration Editor">
			
			<umb:Feedback runat="server" ID="Feedback1" Visible="false" />

			<umb:PropertyPanel runat="server" id="PropertyPanel2" Text="Path">
				<asp:Literal ID="ltrlPath" runat="server" />
			</umb:PropertyPanel>

			<umb:PropertyPanel runat="server" ID="PropertyPanel3">
				<umb:CodeArea runat="server" ID="editorSource" CodeBase="XML" AutoResize="true" OffSetX="47" OffSetY="47"  />
			</umb:PropertyPanel>

		</umb:Pane>

	</umb:UmbracoPanel>

    <script type="text/javascript">
        jQuery(document).ready(function () {
            UmbClientMgr.appActions().bindSaveShortCut();
        });
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server"></asp:Content>

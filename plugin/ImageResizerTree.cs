using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.IO;

using umbraco.BusinessLogic.Actions;
using umbraco.cms.presentation.Trees;
using umbraco.interfaces;

namespace mindrevolution.uImageResizer
{
    /// <summary>
    /// Loads the config files into the tree.
    /// </summary>
    public class ImageResizerTree : BaseTree
    {
        public ImageResizerTree(string application)
            : base(application)
        {
        }

        /// <summary>
        /// Renders the specified tree.
        /// </summary>
        /// <param name="tree">The application tree.</param>
        public override void Render(ref XmlTree tree)
        {
            // render the folders/files
            //base.Render(ref tree);

            // the NodeKey is empty for the root, but contains the folder name for sub-folders.
            if (string.IsNullOrEmpty(this.NodeKey))
            {
                // - add configuration node
                XmlTreeNode confNode = XmlTreeNode.Create(this);
                confNode.NodeID = "ConfigurationFile";
                confNode.Action = "javascript:openuImageResizerConfig();";
                confNode.Text = "Configuration";
                confNode.Icon = "../../plugins/uImageResizer/ConfigFileIcon.gif";
                confNode.OpenIcon = confNode.Icon;
                tree.Add(confNode);

                //// - add docs node
                //XmlTreeNode docsNode = XmlTreeNode.Create(this);
                //docsNode.NodeID = "GettingStarted";
                //docsNode.Action = "javascript:openuImageResizerGettingStarted();";
                //docsNode.Text = "Getting Started";
                //docsNode.Icon = "../../plugins/uImageResizer/DocumentationIcon.gif";
                //docsNode.OpenIcon = docsNode.Icon;
                //tree.Add(docsNode);

                // - add support node
                XmlTreeNode supportNode = XmlTreeNode.Create(this);
                supportNode.NodeID = "Support";
                supportNode.Action = "javascript:openuImageResizerSupport();";
                supportNode.Text = "Support and Service";
                supportNode.Icon = "../../plugins/uImageResizer/SupportIcon.gif";
                supportNode.OpenIcon = supportNode.Icon;
                tree.Add(supportNode);

                // - add licenses node
                XmlTreeNode licenseNode = XmlTreeNode.Create(this);
                licenseNode.NodeID = "Licenses";
                licenseNode.Action = "javascript:openuImageResizerLicensing();";
                licenseNode.Text = "Info on licensing";
                licenseNode.Icon = "../../plugins/uImageResizer/LicensesIcon.gif";
                licenseNode.OpenIcon = licenseNode.Icon;
                tree.Add(licenseNode);



            }
        }

        /// <summary>
        /// Renders the JS.
        /// </summary>
        /// <param name="Javascript">The javascript.</param>
        public override void RenderJS(ref StringBuilder Javascript)
        {
            Javascript.Append(@"
                function openuImageResizer() { parent.right.document.location.href = 'plugins/uImageResizer/Settings.aspx'; }
				function openuImageResizerConfig() { parent.right.document.location.href = 'plugins/uImageResizer/ConfigEditor.aspx'; }
                function openuImageResizerGettingStarted() { parent.right.document.location.href = 'plugins/uImageResizer/GettingStarted.aspx'; }
                function openuImageResizerSupport() { window.open('http://imageresizing.net/support'); }
                function openuImageResizerLicensing() { window.open('http://imageresizing.net/licenses'); }
			");
        }

        /// <summary>
        /// Creates the root node.
        /// </summary>
        /// <param name="rootNode">The root node.</param>
        protected override void CreateRootNode(ref XmlTreeNode rootNode)
        {
            rootNode.Text = "uImageResizer";
            rootNode.Icon = "../../plugins/uImageResizer/TreeIcon.gif";
            rootNode.OpenIcon = FolderIconOpen;
            rootNode.NodeID = "initConfigFiles";
            rootNode.Action = "javascript:openuImageResizer();";
            rootNode.NodeType = String.Concat(rootNode.NodeID, "_", this.TreeAlias);
            rootNode.Menu = new List<IAction>(new IAction[] { ActionRefresh.Instance });
        }
    }
}
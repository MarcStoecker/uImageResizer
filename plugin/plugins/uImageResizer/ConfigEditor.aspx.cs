using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using umbraco;
using umbraco.BasePages;
using umbraco.BusinessLogic;
using umbraco.uicontrols;

namespace uImageResizer
{
    public partial class ConfigEditor : UmbracoEnsuredPage
    {
        /// <summary>
        /// A string containing the path to the config folder.
        /// </summary>
        private const string CONFIGPATH = "/config/";

        /// <summary>
        /// Saves the contents of the config file to disk.
        /// </summary>
        public bool SaveConfigFile(string contents)
        {
            string filename = "ImageResizer.config";
            try
            {
                string filePath;

                filePath = Server.MapPath(string.Concat(CONFIGPATH, filename));
                using (var sw = File.CreateText(filePath))
                {
                    sw.Write(contents);
                }

                return true;
            }
            catch
            {
                return false;
            }
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (this.UmbracoPanel1.hasMenu)
            {
                // add the save button
                ImageButton menuSave = this.UmbracoPanel1.Menu.NewImageButton();
                menuSave.AlternateText = "Save Configuration";
                menuSave.ImageUrl = String.Concat(GlobalSettings.Path, "/images/editor/save.gif");
                menuSave.Click += new ImageClickEventHandler(MenuSave_Click);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string file = "ImageResizer.config";
            string configFile = string.Concat(CONFIGPATH, file);
            string appPath = Request.ApplicationPath;
            if (appPath == "/")
            {
                appPath = string.Empty;
            }

            this.ltrlPath.Text = string.Concat(appPath, configFile);

            if (!IsPostBack)
            {
                string openPath = Server.MapPath(configFile);

                if (File.Exists(openPath))
                {
                    string fileContents = string.Empty;

                    using (var sr = File.OpenText(openPath))
                    {
                        fileContents = sr.ReadToEnd();
                    }

                    if (!String.IsNullOrEmpty(fileContents))
                    {
                        this.editorSource.Text = fileContents;
                    }
                }
                else
                {
                    // display the error
                    this.Feedback1.Text = string.Format("The ImageResizer.Net configuration file '{0}' does not exist.", file);
                    this.Feedback1.type = Feedback.feedbacktype.error;
                    this.Feedback1.Visible = true;

                    // hide the editor menu and property panels
                    this.UmbracoPanel1.hasMenu = false;
                    this.PropertyPanel2.Visible = false;
                    this.PropertyPanel3.Visible = false;
                }
            }
        }

        /// <summary>
        /// Handles the Click event of the MenuSave control.
        /// </summary>
        private void MenuSave_Click(object sender, ImageClickEventArgs e)
        {
            // save the file if there are no errors
            if (this.SaveConfigFile(this.editorSource.Text))
            {
                ClientTools.ShowSpeechBubble(speechBubbleIcon.save, ui.Text("speechBubbles", "fileSavedHeader"), ui.Text("speechBubbles", "fileSavedText"));
            }
            else
            {
                ClientTools.ShowSpeechBubble(speechBubbleIcon.error, ui.Text("speechBubbles", "fileErrorHeader"), ui.Text("speechBubbles", "fileErrorText"));
            }
        }
    }
}
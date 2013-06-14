using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace uImageResizer.plugins.uImageResizer
{
    public partial class Settings : System.Web.UI.Page
    {

    //    protected void Page_Load(object sender, EventArgs e)
    //    {
    //        string pluginAssembly;
    //        string pluginKey;
    //        string pluginFile;
    //        bool pluginInstalled;
    //        System.Web.UI.WebControls.Button btn;

    //        // - check state
    //        foreach (System.Web.UI.Control panel in PluginsPanel.Controls)
    //        {
    //            foreach (System.Web.UI.Control ctl in panel.Controls)
    //            {
    //                if (ctl is System.Web.UI.WebControls.Button)
    //                {
    //                    btn = ((System.Web.UI.WebControls.Button)ctl);
    //                    // if commandname is not empty (assembly needed for this item)
    //                    if (btn.CommandName != string.Empty)
    //                    {
    //                        pluginAssembly = btn.CommandName;
    //                        pluginKey = btn.CommandArgument.ToString();
    //                        pluginFile = System.IO.Path.Combine(Server.MapPath("/bin/"), pluginAssembly);
    //                        pluginInstalled = System.IO.File.Exists(pluginFile);
    //                        if (btn.Text.ToLowerInvariant() == "install")
    //                        {
    //                            btn.Enabled = !pluginInstalled;
    //                        }
    //                        else if (btn.Text.ToLowerInvariant() == "uninstall")
    //                        {
    //                            btn.Enabled = pluginInstalled;
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    }

    //    protected void onInstallClick(Object sender, EventArgs e)
    //    {
    //        System.Web.UI.WebControls.Button btn = (System.Web.UI.WebControls.Button)sender;
    //        string pluginAssembly = btn.CommandName;
    //        string pluginKey = btn.CommandArgument.ToString();

    //        // - add succes message NOW (so error message could override this)
    //        Feedback1.Text = pluginKey + " added.";
    //        Feedback1.Visible = true;

    //        // - need to install assembly, too?
    //        if (pluginAssembly != string.Empty)
    //        {
    //            InstallAssembly(pluginAssembly);
    //        }

    //        // - dependencies required?
    //        string dependenciesfile = pluginKey + ".dependencies.config";
    //        if (System.IO.File.Exists(Server.MapPath("~/App_Data/uImageResizer/" + dependenciesfile)))
    //        {
    //            CopyDependencies(dependenciesfile);
    //        }

    //        // - merge config file (ImageResizer.config)
    //        string configfile = pluginKey + ".config";
    //        if (System.IO.File.Exists(Server.MapPath("~/App_Data/uImageResizer/" + configfile)))
    //        {
    //            AddConfig(configfile, "~/config/ImageResizer.config");
    //        }
    //        // - merge config file (web.config)
    //        configfile = pluginKey + ".web.config";
    //        if (System.IO.File.Exists(Server.MapPath("~/App_Data/uImageResizer/" + configfile)))
    //        {
    //            AddConfig(configfile, "~/web.config");
    //        }
    //    }

    //    private void InstallAssembly(string filename)
    //    {
    //        string fileOrigin = System.IO.Path.Combine(Server.MapPath("~/App_Data/uImageResizer/"), filename);
    //        string fileTarget = System.IO.Path.Combine(Server.MapPath("~/bin/"), filename);

    //        // - copy assembly
    //        try
    //        {
    //            System.IO.File.Copy(fileOrigin, fileTarget);
    //        }
    //        catch(Exception ex)
    //        {
    //            Feedback1.Text = "Error installing '" + filename + "'." + " (" + ex.Message + ")";
    //            Feedback1.Visible = true;
    //        }
    //    }

    //    private void AddConfig(string configfile, string targetfile)
    //    {
    //        try
    //        {
    //            var globalconfig = XDocument.Load(Server.MapPath(targetfile));
    //            globalconfig.Root.Add(XDocument.Load(Server.MapPath("~/App_Data/uImageResizer/" + configfile)).Root.Elements());
    //            globalconfig.Save(Server.MapPath("~/config/ImageResizer.config"));
    //        }
    //        catch (Exception ex)
    //        {
    //            Feedback1.Text = "Unable to merge configuration settings for '" + configfile + "'." + " (" + ex.Message + ")";
    //            Feedback1.Visible = true;
    //        }
    //    }

    //    private void CopyDependencies(string dependenciesfiles)
    //    {
    //        try
    //        {
    //            XmlDocument xml = new XmlDocument();
    //            xml.Load(Server.MapPath("~/App_Data/uImageResizer/" + dependenciesfiles));
    //            XmlNodeList nodes = xml.SelectNodes("/files/file");
    //            string filename = string.Empty;
    //            foreach (XmlNode node in nodes)
    //            {
    //                // - copy dependencies to /bin
    //                try
    //                {
    //                    filename = node.Attributes["name"].InnerText;
    //                    System.IO.File.Copy(Server.MapPath("~/App_Data/uImageResizer/" + filename), Server.MapPath("~/bin/" + filename), true);
    //                }
    //                catch (Exception ex)
    //                {
    //                    Feedback1.Text = "Error copying dependency '" + filename + "'." + " (" + ex.Message + ")";
    //                    Feedback1.Visible = true;
    //                }
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            Feedback1.Text = "Unable to copy dependencies according to '" + dependenciesfiles + "'." + " (" + ex.Message + ")";
    //            Feedback1.Visible = true;
    //        }
    //    }
    }
}
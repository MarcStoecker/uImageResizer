using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace uImageResizer.plugins.uImageResizer
{
    public partial class GettingStarted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Version ver = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version;
            document.InnerHtml = "<h1>uImageResizer " + ver.Major.ToString() + "." + ver.Minor.ToString() + "</h1>";

            using (var file = System.IO.File.OpenText(Server.MapPath("~/umbraco/plugins/uImageResizer/docs/GettingStarted.html")))
            {
                document.InnerHtml += file.ReadToEnd();
            }
        }
    }
}
<%@ Page Language="C#" MasterPageFile="../../masterpages/umbracoPage.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="uImageResizer.plugins.uImageResizer.Settings" %>
<%@ Register TagPrefix="umb" Namespace="umbraco.uicontrols" Assembly="controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .detailstext {
            padding-left:10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

	<umb:UmbracoPanel runat="server" ID="PluginsPanel" Text="uImageResizer" hasMenu="true">

        <div ID="document" runat="server"></div>

        <umb:Pane runat="server" ID="Base" Text="ImageResizer">
            <p>The ImageResizer.dll is always installed with the package. You can however activate and deactivate some of the default ImageResizer features by <a href="ConfigEditor.aspx">editing the configuration file</a>.</p>

            <a href="http://imageresizing.net/plugins/defaultencoder" target="_blank">DefaultEncoder</a><span class="detailstext">Adjustable jpeg compression, 24-bit PNG with transparency support, and standard .NET GIF encoding (which is very lousy).</span><br />
            <a href="http://imageresizing.net/plugins/diagnostics" target="_blank">Diagnostics</a><span class="detailstext">Whenever you have an issue, go to localhost/resizer.debug and you'll probably be told what is wrong.</span><br />
            <a href="http://imageresizing.net/plugins/clientcache" target="_blank">ClientCache</a><span class="detailstext">Sets Cache-control, Expires, and Last-modified headers for optimum performance.</span><br />
            <a href="http://imageresizing.net/plugins/sizelimiting" target="_blank">SizeLimiting</a><span class="detailstext">Limit maximum resolution of photos, or the total size of all processed images.</span><br />

        </umb:Pane>
		
		<umb:Pane runat="server" ID="FreeBundle" Text="Free Bundle">
            <p>The <a href="http://imageresizing.net/plugins/bundles/free" target="_blank">Free Bundle</a> provides almost 20 plugins for no cost.</p>

            <a href="http://imageresizing.net/plugins/image404" target="_blank">Image404</a><span class="detailstext">Supply default images instead of a 404 when an image is missing.</span><br />
            <a href="http://imageresizing.net/plugins/virtualfolder" target="_blank">VirtualFolder</a><span class="detailstext">Create an IIS-like virtual folder that works in Cassini as well as IIS, and doesn't require IIS configuration.</span><br />
            <a href="http://imageresizing.net/plugins/dropshadow" target="_blank">DropShadow</a><span class="detailstext">Adds drop-shadow feature (shadowOffset, shadowWidth, shadowColor)</span><br />
            <a href="http://imageresizing.net/plugins/gradient" target="_blank">Gradient </a><span class="detailstext">Create gradients from css, js, or html: /gradient.png?color1=FFFFFFAA&color2=BBBBBB99&width=10&width=10&rotate=90.</span><br />
            <a href="http://imageresizing.net/plugins/folderresizesyntax" target="_blank">FolderResizeSyntax</a><span class="detailstext">Resize images without using the query string.</span><br />
            <a href="http://imageresizing.net/plugins/imagehandlersyntax" target="_blank">ImageHandlerSyntax</a><span class="detailstext">Migrate websites from other image resizing handlers without breaking any URLs.</span><br />
            <a href="http://imageresizing.net/plugins/speedorquality" target="_blank">SpeedOrQuality</a><span class="detailstext">Gain a 15-30% speed boost by sacrificing rendering quality.</span><br />
            <a href="http://imageresizing.net/plugins/presets" target="_blank">Presets</a><span class="detailstext">Created named settings groups and and reference them with ?preset=name instead of specifying them all in the URL</span><br />
            <a href="http://imageresizing.net/plugins/autorotate" target="_blank">AutoRotate</a><span class="detailstext">Use the EXIF rotation data from the camera to auto-rotate your images.</span><br />
            <a href="http://imageresizing.net/plugins/defaultsettings" target="_blank">DefaultSettings</a><span class="detailstext">Allows you to configure the default setting values when commands (like scale) are omitted</span><br />
            <a href="http://imageresizing.net/plugins/iepngfix" target="_blank">IEPngFix</a><span class="detailstext">Automatically serve GIF versions of PNG files to IE6 and below clients. Opt-in or opt-out, very configurable.</span><br />
            
            <p>These 3 plugins are in <strong>separate assemblies</strong> due to their dependencies:</p>
            <a href="http://imageresizing.net/plugins/logging" target="_blank">Logging</a><span class="detailstext">Allows logging through NLog</span><br />
            <a href="http://imageresizing.net/plugins/mvcroutingshim" target="_blank">MvcRoutingShim</a><span class="detailstext">Prevent MVC Routes from taking over the ImageResizer's requests.</span><br />
            <a href="http://imageresizing.net/plugins/pdfrenderer" target="_blank">PdfRenderer</a><span class="detailstext">Render PDFs to images dynamically, then crop or process them as an image. Under a different license due to its use of GPL components.</span><br />
		</umb:Pane>

		<umb:Pane runat="server" ID="PerformanceBundle" Text="Performance Bundle">
            <p>The <a href="http://imageresizing.net/plugins/bundles/1" target="_blank">Performance Bundle</a> gives you scalable performance, high-quality GIF, animated GIF, and 8-bit PNG support. <em>Licence required.</em></p>

            <a href="http://imageresizing.net/plugins/diskcache" target="_blank">DiskCache</a><span class="detailstext">Makes dynamic image processing as responsive and scalable as static images - because they are! Suggested, nay, required for websites with significant traffic. Medium-trust compatible.</span><br />
            <a href="http://imageresizing.net/plugins/prettygifs" target="_blank">PrettyGifs</a><span class="detailstext">Get rid of ugly .NET GIFs, and get photoshop-like results for GIFs and 8-bit PNG images. Uses tuned octree quantization and smart, adjustable dithering.</span><br />
            <a href="http://imageresizing.net/plugins/animatedgifs" target="_blank">AnimatedGifs</a><span class="detailstext">Process and resize GIF animations like normal GIF images. Every frame is processed and re-encoded. Medium-trust compatible.</span><br />
		</umb:Pane>

		<umb:Pane runat="server" ID="CloudBundle" Text="Cloud Bundle">
            <p>Resize images (or serve files) from remote websites, Amazon S3 buckets, Azure Blob Storage, MongoDB GridFS, or Microsoft SQL. Integrate your website with Amazon's CloudFront CDN in seconds for unbeatable performance worldwide. All plugins are medium-trust compatible.</p>
            <p>See <a href="http://imageresizing.net/docs/cloud">Cloud Basics</a> for the overview.</p>

            <a href="http://imageresizing.net/plugins/s3reader" target="_blank">S3Reader</a><span class="detailstext">Process and resize images located on a remote Amazon S3 bucket. A VirtualPathProvider. Works best when combined with DiskCache.</span><br />
            <a href="http://imageresizing.net/plugins/sqlreader" target="_blank">SQLReader</a><span class="detailstext">Process and resize images located in a MS SQL database. Extremely configurable, can work with nearly any database schema. A VirtualPathProvider.</span><br />
            <a href="http://imageresizing.net/plugins/cloudfront" target="_blank">CloudFront</a><span class="detailstext">Allows you to use Amazon CloudFront with the resizer. Highly recommended - offers inexpensive worldwide edge caching and great scalability.</span><br />
            <a href="http://imageresizing.net/plugins/azurereader" target="_blank">AzureReader</a><span class="detailstext">Allows blobstore images to be resized and served.</span><br />
            <a href="http://imageresizing.net/plugins/mongoreader" target="_blank">MongoReader</a><span class="detailstext">Allows GridFS files to be resized and served</span><br />
            <a href="http://imageresizing.net/plugins/remotereader" target="_blank">RemoteReader</a><span class="detailstext">Allows images located on external servers to be resized and processed as if they existed locally.</span><br />
		</umb:Pane>

		<umb:Pane runat="server" ID="DesignBundle" Text="Design Bundle">
            <p>The <a href="http://imageresizing.net/plugins/bundles/2">Design Bundle</a> gives you tremendous flexibility for a very low price point. The Watermark and SimpleFilters plugins are medium-trust compatible.</p>
            <ul>
                <li>Get a 2-4x speed boost by using WIC instead of GDI (requires full trust)</li>
                <li>Go nuts with your RAW files, PSD files, and apply advanced filters you'd only expect from Photoshop.</li>
                <li>Overlay (or underlay) multiple text and image layers with the Watermark plugin - anything is possible.</li>
                <li>Auto-trim your product photos with WhitespaceTrimmer, or use SeamCarving to magically change the aspect ratio of images by slicing seams of pixels from background (low-energy) areas of the image.</li>
            </ul>

            <a href="http://imageresizing.net/plugins/watermark" target="_blank">Watermark</a><span class="detailstext">Render multiple image & text overlays and background layers with incredible flexibility and great performance.</span><br />
            <a href="http://imageresizing.net/plugins/psdreader" target="_blank">PsdReader</a><span class="detailstext">Adds support for PSD source files.</span><br />
            <a href="http://imageresizing.net/plugins/simplefilters" target="_blank">SimpleFilters</a><span class="detailstext">Adjust photo transparency, brightness, and apply sepia and B&W filters through the querystring. Nearly zero performance overhead - matrix-based.</span><br />
            <a href="http://imageresizing.net/plugins/advancedfilters" target="_blank">AdvancedFilters</a><span class="detailstext">Blur, sharpen, remove noise, and perform automatic histogram adjustment. Plus several other cool effects.</span><br />
            <a href="http://imageresizing.net/plugins/seamcarving" target="_blank">SeamCarving</a><span class="detailstext">Content-aware image resizing (Fast C++ exe, requires Full Trust)</span><br />
            <a href="http://imageresizing.net/plugins/whitespacetrimmer" target="_blank">WhitespaceTrimmer</a><span class="detailstext">Automatically trims whitespace off an image using smart edge detection</span><br />
            <a href="http://imageresizing.net/plugins/freeimage" target="_blank">FreeImageDecoder</a><span class="detailstext">Adds support for RAW & HDR source images - over 20 formats supported.</span><br />
            <a href="http://imageresizing.net/plugins/freeimage" target="_blank">FreeImageEncoder</a><span class="detailstext">2-4x Faster jpeg encoding.</span><br />
            <a href="http://imageresizing.net/plugins/freeimage" target="_blank">FreeImageResizer</a><span class="detailstext">Adds support for Lanczos3 and CatmullRom scaling algorithsm: &fi.scale=bicubic|bilinear|box|bspline|catmullrom|lanczos command</span><br />
            <a href="http://imageresizing.net/plugins/freeimage" target="_blank">FreeImageBuilder</a><span class="detailstext">Provides an alternate pipeline that uses FreeImage exclusively. Faster for some operations, slower for others.</span><br />
            <a href="http://imageresizing.net/plugins/wic" target="_blank">WicDecoder</a><span class="detailstext">Supports decoding images through WIC, supporting any image codecs installed on the computer.</span><br />
            <a href="http://imageresizing.net/plugins/wic" target="_blank">WicEncoder</a><span class="detailstext">Encode jpeg, gif, and png images through WIC for better performance and more control. Adjust jpeg quality, subsampling, gif dithering, and palette size.</span><br />
            <a href="http://imageresizing.net/plugins/wic" target="_blank">WicBuilder</a><span class="detailstext">Provides a completely alternate pipeline, which supports most basic resize/crop/pad operations. 2-4x faster than the default pipeline. Enable on a per-request bass.</span><br />
		</umb:Pane>

		<umb:Pane runat="server" ID="ExtrasBundle" Text="Extras Bundle">
            <p>The <a href="http://imageresizing.net/plugins/bundles/4">Extras Bundle</a> is not yet available through the checkout system. Please email support@imageresizing.net to purchase a license.</p>

            <a href="http://imageresizing.net/plugins/batchzipper" target="_blank">BatchZipper</a><span class="detailstext">Asynchronously generated .zip archives of files and resized images. Great for providing customized downloads to customers.</span><br />
            <a href="http://imageresizing.net/plugins/psdcomposer" target="_blank">PsdComposer</a><span class="detailstext">Dynamically edit and render PSD files - turn layers on and off, edit text layer contents, and apply certain effects.</span><br />
		</umb:Pane>



	</umb:UmbracoPanel>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server"></asp:Content>

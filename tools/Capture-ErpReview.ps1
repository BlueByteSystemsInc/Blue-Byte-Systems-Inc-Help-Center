param([Parameter(Mandatory=$true)][string]$AssemblyDirectory)
$ErrorActionPreference='Stop'
Add-Type -AssemblyName PresentationFramework,PresentationCore,WindowsBase,System.Xaml
$core=Join-Path $AssemblyDirectory 'PDMPublisher.SOLIDWORKS.dll'
$contract=Join-Path $AssemblyDirectory 'PDMPublisher.ERPExtension.dll'
Add-Type -Path $contract
Add-Type -Path $core
Add-Type -ReferencedAssemblies $core,$contract,PresentationFramework,PresentationCore,WindowsBase,System.Xaml,System.Core -TypeDefinition @'
using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using PDMPublisher.ERPExtension;
using PDMPublisher.SOLIDWORKS.BomManager;
using PDMPublisher.SOLIDWORKS.ErpSync;
public static class ErpDocScreens {
    public static void Capture(string folder) {
        typeof(ErpSyncPreviewWindow).Assembly.GetType("PDMPublisher.SOLIDWORKS.Settings.ToolsTheme").GetMethod("SetDark").Invoke(null,new object[]{true});
        foreach(bool pull in new[]{false,true}) {
            var rows=new List<BomRow>();
            var names=new[]{"speaker.sldasm","frame.sldprt","magnet.sldprt"};
            var descriptions=new[]{"Speaker","Steel frame","Magnet"};
            for(int i=0;i<3;i++) {
                var row=new BomRow { Name=names[i],FilePath=@"C:\Demo\"+names[i],Configuration="Default",Type=i==0?"Assemblies":"Parts",Level=i==0?0:1,Quantity=i==2?2:1 };
                row.Properties["PartNumber"]="SP-00"+(i+1);row.Properties["Description"]=descriptions[i];row.Properties["Cost"]=i==0?"15.93":"6.87";row.Properties["Material"]="Steel";
                rows.Add(row);
            }
            rows[0].Children.Add(rows[1]);rows[0].Children.Add(rows[2]);
            var payload=new ModelDocData();ErpPayload.AddRows(payload,rows);
            var changes=new List<ErpSyncChange>();var scopes=new Dictionary<ErpSyncChange,string>();
            for(int i=0;i<3;i++) {
                string item=pull?payload.Components[i].SourceIdentity:rows[i].Properties["PartNumber"];
                var description=new ErpSyncChange("Properties",item,pull?"Description":"description",i==1?"Unchanged":"Update",pull?descriptions[i]:"Old "+descriptions[i],pull?(i==1?descriptions[i]:"New "+descriptions[i]):descriptions[i]);
                changes.Add(description);
                changes.Add(new ErpSyncChange("Properties",item,pull?"Cost":"standard_price","Unchanged",rows[i].Properties["Cost"],rows[i].Properties["Cost"]));
                if(pull) scopes.Add(description,"Custom properties");
            }
            if(!pull) changes.Add(new ErpSyncChange("BOM","SP-001","magnet.sldprt","Update","1","2"));
            var keys=new[]{"<Item>","<Configuration>","<Quantity>","Description","Cost","Material"};
            var settings=new Dictionary<string,object>{{"ItemCodeProperty","PartNumber"},{"PropertyMappings","{\"description\":\"Description\",\"standard_price\":\"Cost\"}"}};
            var model=new ErpSyncPreviewViewModel(new ErpSyncPlan("documentation",changes),pull,rows,payload,settings,keys,scopes,"https://odoocdn.com/openerp_website/static/src/img/assets/png/odoo_logo_tiny.png");
            model.ShowUnchanged=true;
            var window=new ErpSyncPreviewWindow {DataContext=model,Width=1250,Height=390,MinHeight=360,ShowActivated=false,ShowInTaskbar=false,WindowStartupLocation=WindowStartupLocation.Manual,Left=-10000,Top=-10000};
            var grid=new DataGrid {RowHeight=30,ColumnHeaderHeight=42,FontSize=12};grid.Columns.Add(new DataGridTextColumn());
            foreach(string key in keys)grid.Columns.Add(new DataGridTextColumn{Header=key,Width=key=="Description"?350:key=="<Item>"?205:key=="<Configuration>"?100:key=="<Quantity>"?65:135});
            typeof(ErpSyncPreviewWindow).GetMethod("MatchSourceGrid",System.Reflection.BindingFlags.Instance|System.Reflection.BindingFlags.NonPublic).Invoke(window,new object[]{grid,keys});
            window.Show();window.UpdateLayout();
            window.Dispatcher.Invoke(new Action(()=>{}),System.Windows.Threading.DispatcherPriority.ApplicationIdle);
            // Render the actual WPF content without the native non-client frame.
            var content=(FrameworkElement)window.Content;
            var bitmap=new RenderTargetBitmap((int)Math.Ceiling(content.ActualWidth),(int)Math.Ceiling(content.ActualHeight),96,96,PixelFormats.Pbgra32);
            var drawing=new DrawingVisual();
            using(var context=drawing.RenderOpen()) {
                var bounds=new Rect(0,0,content.ActualWidth,content.ActualHeight);
                context.DrawRectangle(new SolidColorBrush(Color.FromRgb(36,39,43)),null,bounds);
                context.DrawRectangle(new VisualBrush(content),null,bounds);
            }
            bitmap.Render(drawing);var png=new PngBitmapEncoder();png.Frames.Add(BitmapFrame.Create(bitmap));
            using(var stream=File.Create(Path.Combine(folder,pull?"erp-pull-review-20261049.png":"erp-push-review-20261049.png")))png.Save(stream);
            window.Close();
        }
    }
}
'@
[ErpDocScreens]::Capture([IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../images/pdmpublisher/solidworks')))

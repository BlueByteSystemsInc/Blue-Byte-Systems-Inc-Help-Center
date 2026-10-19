# Safety net: ensure the custom CSS overrides land in the build output
# (some docfx versions do not merge extra template folders reliably).
Copy-Item -Path "templates\bluebyte\public\main.css" -Destination "docs\public\main.css" -Force
Write-Host "Custom main.css copied into docs/public."

# Path to your HTML file
$filePath = "docs\index.html"

# SEO tags tailored specifically for docs.bluebyte.biz
$tagsToInsert = @"
    <link rel="canonical" href="https://docs.bluebyte.biz/" />
    <meta name="description" content="Official documentation and downloads for Blue Byte Systems Inc. SOLIDWORKS PDM tools." />
    <meta name="keywords" content="Blue Byte Systems, PDM2Excel, PDMDeploy, PDMShell, SOLIDWORKS PDM, PDM automation, SOLIDWORKS documentation, PDM Excel integration, CAD document automation, SOLIDWORKS add-ins" />
    <meta name="author" content="Blue Byte Systems Inc." />
    <!-- Open Graph Tags -->
    <meta property="og:title" content="Blue Byte Systems Documentation" />
    <meta property="og:description" content="Documentation and downloads for Blue Byte Systems SOLIDWORKS PDM tools." />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://docs.bluebyte.biz/" />
    <meta property="og:image" content="https://docs.bluebyte.biz/images/logo.png" />

    <!-- Twitter Cards -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Blue Byte Systems Documentation" />
    <meta name="twitter:description" content="Documentation and downloads for Blue Byte Systems SOLIDWORKS PDM tools." />
    <meta name="twitter:image" content="https://docs.bluebyte.biz/images/logo.png" />

    <!-- Robots Tag -->
    <meta name="robots" content="index, follow" />

    <!-- Structured Data -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "TechArticle",
      "headline": "Blue Byte Systems Documentation",
      "description": "Documentation and downloads for Blue Byte Systems SOLIDWORKS PDM tools.",
      "publisher": {
        "@type": "Organization",
        "name": "Blue Byte Systems Inc.",
        "url": "https://bluebyte.biz"
      },
      "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "https://docs.bluebyte.biz/"
      }
    }
    </script>
"@

# Read current HTML content
$htmlContent = Get-Content -Path $filePath -Raw

# Avoid duplicate insertion
if ($htmlContent -like "*rel=`"canonical`"*") {
    Write-Host "SEO tags already present. No changes made."
}
elseif ($htmlContent -match "</head>") {
    $updatedContent = $htmlContent -replace "</head>", "$tagsToInsert`r`n</head>"
    Set-Content -Path $filePath -Value $updatedContent -Encoding UTF8
    Write-Host "SEO tags successfully inserted into index.html."
}
else {
    Write-Host "Error: Couldn't find </head> tag in index.html."
}

# PDMPublisher documentation has one canonical home: pdmpublisher.com/help.
# Keep redirect stubs at the former docs.bluebyte.biz paths so bookmarks and
# search results continue to work. The downloads folder is intentionally not
# included; it remains hosted at docs.bluebyte.biz for stable release URLs.
function Test-PDMPublisherSourcePage {
    param([string]$RelativePath)

    $normalized = $RelativePath -replace '\\', '/'
    $fileName = [System.IO.Path]::GetFileName($normalized)
    $lastSlash = $normalized.LastIndexOf('/')
    $directory = if ($lastSlash -ge 0) { $normalized.Substring(0, $lastSlash) } else { '' }

    if ($fileName -like 'pdmpublisher*.md') { return $true }
    if ($directory -in @('pdmpublisher-options', 'pdmpublisher-annotations', 'pdmpublisher-conditions')) { return $true }

    return $fileName -in @(
        'introduction.md',
        'propertiespagepdmpublisher.md',
        'licensespdmpublisher.md',
        'options.md',
        'annotations.md',
        'task-integrations.md',
        'conditions.md',
        'conditions_solidworks.md',
        'scheduleditems.md',
        'changeslog.md',
        'eula.md',
        'installingpdmaddins.md',
        'offlineactivator.md',
        'cdpdm.md',
        'cdpdmchangeslog.md',
        'updateaddinswithcdpdm.md',
        'pdmqa.md'
    )
}

function Write-PermanentRedirect {
    param(
        [string]$OutputPath,
        [string]$DestinationUrl
    )

    $escapedUrl = [System.Net.WebUtility]::HtmlEncode($DestinationUrl)
    $redirectHtml = @"
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>PDMPublisher Help has moved</title>
  <link rel="canonical" href="$escapedUrl">
  <meta http-equiv="refresh" content="0; url=$escapedUrl">
  <meta name="robots" content="noindex,follow">
  <script>window.location.replace("$DestinationUrl");</script>
</head>
<body>
  <p>PDMPublisher Help has moved to <a href="$escapedUrl">$escapedUrl</a>.</p>
</body>
</html>
"@
    Set-Content -LiteralPath $OutputPath -Value $redirectHtml -Encoding UTF8
}

$redirectSets = @(
    @{ Source = 'src'; Output = 'docs\src'; BaseUrl = 'https://pdmpublisher.com/help/src' },
    @{ Source = 'src-fr-ca'; Output = 'docs\src-fr-ca'; BaseUrl = 'https://pdmpublisher.com/help/fr-ca/src' },
    @{ Source = 'src-de-de'; Output = 'docs\src-de-de'; BaseUrl = 'https://pdmpublisher.com/help/de-de/src' },
    @{ Source = 'src-pt-br'; Output = 'docs\src-pt-br'; BaseUrl = 'https://pdmpublisher.com/help/pt-br/src' }
)

$redirectCount = 0
$redirectSitePaths = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
$docsRoot = (Resolve-Path 'docs').Path
foreach ($set in $redirectSets) {
    $sourceRoot = (Resolve-Path $set.Source).Path
    Get-ChildItem -LiteralPath $sourceRoot -Recurse -File -Filter '*.md' | ForEach-Object {
        $relativePath = $_.FullName.Substring($sourceRoot.Length).TrimStart([char[]]@(92, 47))
        if (-not (Test-PDMPublisherSourcePage $relativePath)) { return }

        $relativeHtml = ([System.IO.Path]::ChangeExtension($relativePath, '.html') -replace '\\', '/')
        $outputPath = Join-Path $set.Output $relativeHtml
        if (Test-Path -LiteralPath $outputPath) {
            $destinationPage = switch ($relativeHtml.ToLowerInvariant()) {
                'pdmpublisher-product-body.html' { 'pdmpublisher.html' }
                'pdmpublisher-solidworks-product-body.html' { 'pdmpublishersolidworks.html' }
                default { $relativeHtml }
            }
            $destinationUrl = "$($set.BaseUrl)/$destinationPage"
            Write-PermanentRedirect -OutputPath $outputPath -DestinationUrl $destinationUrl
            $absoluteOutputPath = (Resolve-Path -LiteralPath $outputPath).Path
            $sitePath = '/' + $absoluteOutputPath.Substring($docsRoot.Length).TrimStart([char[]]@(92, 47)).Replace([char]92, [char]47)
            [void]$redirectSitePaths.Add($sitePath)
            $redirectCount++
        }
    }
}

# A small number of legacy generated pages no longer have a Markdown source or
# a one-to-one page on pdmpublisher.com. Route them to the closest current page.
$legacyRedirects = @(
    @{
        Output = 'docs\src\pdmpublishersolidworks-theme.html'
        Destination = 'https://pdmpublisher.com/help/src/pdmpublishersolidworks_settings.html'
    }
)

foreach ($legacyRedirect in $legacyRedirects) {
    if (-not (Test-Path -LiteralPath $legacyRedirect.Output)) { continue }

    Write-PermanentRedirect -OutputPath $legacyRedirect.Output -DestinationUrl $legacyRedirect.Destination
    $absoluteOutputPath = (Resolve-Path -LiteralPath $legacyRedirect.Output).Path
    $sitePath = '/' + $absoluteOutputPath.Substring($docsRoot.Length).TrimStart([char[]]@(92, 47)).Replace([char]92, [char]47)
    [void]$redirectSitePaths.Add($sitePath)
    $redirectCount++
}

Write-Host "Replaced $redirectCount PDMPublisher pages with redirects to pdmpublisher.com."

# Redirect pages should not be advertised as original content in the Help
# Center sitemap. Their canonical destinations are present in the
# pdmpublisher.com sitemap instead.
$sitemapPath = 'docs\sitemap.xml'
if (Test-Path -LiteralPath $sitemapPath) {
    [xml]$sitemap = Get-Content -LiteralPath $sitemapPath -Raw
    $namespaceManager = [System.Xml.XmlNamespaceManager]::new($sitemap.NameTable)
    $namespaceManager.AddNamespace('sm', $sitemap.DocumentElement.NamespaceURI)
    $removedFromSitemap = 0

    foreach ($urlNode in @($sitemap.SelectNodes('/sm:urlset/sm:url', $namespaceManager))) {
        $locationNode = $urlNode.SelectSingleNode('sm:loc', $namespaceManager)
        if ($null -eq $locationNode) { continue }

        $locationPath = ([System.Uri]$locationNode.InnerText).AbsolutePath
        if ($redirectSitePaths.Contains($locationPath)) {
            [void]$urlNode.ParentNode.RemoveChild($urlNode)
            $removedFromSitemap++
        }
    }

    $writerSettings = [System.Xml.XmlWriterSettings]::new()
    $writerSettings.Indent = $true
    $writerSettings.Encoding = [System.Text.UTF8Encoding]::new($false)
    $writer = [System.Xml.XmlWriter]::Create((Resolve-Path $sitemapPath).Path, $writerSettings)
    try { $sitemap.Save($writer) } finally { $writer.Dispose() }
    Write-Host "Removed $removedFromSitemap redirected pages from docs/sitemap.xml."
}

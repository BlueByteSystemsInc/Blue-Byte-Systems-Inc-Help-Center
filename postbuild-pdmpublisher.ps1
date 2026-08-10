param(
    [string]$OutputPath = "pdmpublisher.com\help"
)

$siteBaseUrl = "https://pdmpublisher.com/help"
$cssSource = "templates\bluebyte\public\main.css"
$cssDestination = Join-Path $OutputPath "public\main.css"

if (-not (Test-Path -LiteralPath $OutputPath)) {
    throw "PDMPublisher output folder was not found: $OutputPath"
}

Copy-Item -LiteralPath $cssSource -Destination $cssDestination -Force
Write-Host "Custom main.css copied into $OutputPath/public."

$outputFullPath = [IO.Path]::GetFullPath($OutputPath).TrimEnd([IO.Path]::DirectorySeparatorChar)
$utf8WithoutBom = New-Object Text.UTF8Encoding($false)
$htmlFiles = Get-ChildItem -LiteralPath $OutputPath -Filter "*.html" -Recurse -File

foreach ($htmlFile in $htmlFiles) {
    $relativePath = $htmlFile.FullName.Substring($outputFullPath.Length).TrimStart([char[]]"\/")
    $relativeUrl = $relativePath -replace "\\", "/"
    $canonicalUrl = if ($relativeUrl -eq "index.html") {
        "$siteBaseUrl/"
    }
    else {
        "$siteBaseUrl/$relativeUrl"
    }

    $htmlContent = Get-Content -LiteralPath $htmlFile.FullName -Raw

    # Root-relative links escape the /help/ deployment folder, so scope them to this site.
    $htmlContent = [regex]::Replace(
        $htmlContent,
        '(\b(?:href|src|action)=["''])/(?!/)',
        '$1/help/',
        [Text.RegularExpressions.RegexOptions]::IgnoreCase
    )

    $htmlContent = [regex]::Replace(
        $htmlContent,
        '\s*<link\s+rel=["'']canonical["''][^>]*>',
        '',
        [Text.RegularExpressions.RegexOptions]::IgnoreCase
    )
    $htmlContent = [regex]::Replace(
        $htmlContent,
        '\s*<meta\s+name=["'']robots["''][^>]*>',
        '',
        [Text.RegularExpressions.RegexOptions]::IgnoreCase
    )

    $tagsToInsert = @"
    <link rel="canonical" href="$canonicalUrl" />
    <meta name="robots" content="index, follow" />
"@

    if ($relativeUrl -eq "index.html") {
        $tagsToInsert += @"

    <meta name="keywords" content="PDMPublisher, SOLIDWORKS PDM, SOLIDWORKS add-in, PDMDeploy, PDF export, DXF export, PDM task automation" />
    <meta name="author" content="Blue Byte Systems Inc." />
    <meta property="og:title" content="PDMPublisher Help Center" />
    <meta property="og:description" content="Setup, licensing, configuration, and troubleshooting documentation for PDMPublisher." />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="$siteBaseUrl/" />
    <meta property="og:image" content="$siteBaseUrl/images/large_logo.png" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="PDMPublisher Help Center" />
    <meta name="twitter:description" content="Official PDMPublisher documentation from Blue Byte Systems Inc." />
    <meta name="twitter:image" content="$siteBaseUrl/images/large_logo.png" />
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "WebSite",
      "name": "PDMPublisher Help Center",
      "url": "$siteBaseUrl/",
      "publisher": {
        "@type": "Organization",
        "name": "Blue Byte Systems Inc.",
        "url": "https://bluebyte.biz"
      }
    }
    </script>
"@
    }

    if ($htmlContent -notmatch "</head>") {
        [IO.File]::WriteAllText($htmlFile.FullName, $htmlContent, $utf8WithoutBom)
        continue
    }

    $updatedContent = $htmlContent -replace "</head>", "$tagsToInsert`r`n</head>"
    [IO.File]::WriteAllText($htmlFile.FullName, $updatedContent, $utf8WithoutBom)
}

$invalidRootLinks = Get-ChildItem -LiteralPath $OutputPath -Filter "*.html" -Recurse -File |
    Select-String -Pattern '(\b(?:href|src|action)=["''])/(?!/|help(?:/|["'']))'

if ($invalidRootLinks) {
    throw "The /help/ export still contains root-relative links outside /help/."
}

$deploymentNotePath = Join-Path (Split-Path -Parent $OutputPath) "FTP-DEPLOYMENT.txt"
$deploymentNote = @"
PDMPublisher Help Center FTP deployment

Upload the entire 'help' folder into the Managed WordPress '/html' folder.
The resulting server path must be '/html/help/index.html'.
The public URL is https://pdmpublisher.com/help/.

Add this line to the root pdmpublisher.com robots.txt through WordPress or its SEO plugin:
Sitemap: https://pdmpublisher.com/help/sitemap.xml
"@
[IO.File]::WriteAllText([IO.Path]::GetFullPath($deploymentNotePath), $deploymentNote, $utf8WithoutBom)

Write-Host "Processed $($htmlFiles.Count) HTML files for $siteBaseUrl/."
Write-Host "FTP deployment note written to $deploymentNotePath."

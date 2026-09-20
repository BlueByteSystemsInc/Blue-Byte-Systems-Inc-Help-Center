param(
    [string]$OutputPath = "pdmpublisher.com\help",
    [string]$SiteBaseUrl = "https://pdmpublisher.com/help",
    [string]$Language = "en-CA"
)

$siteBaseUrl = $SiteBaseUrl.TrimEnd('/')
$cssSource = "templates\bluebyte\public\main.css"
$cssDestination = Join-Path $OutputPath "public\main.css"

if (-not (Test-Path -LiteralPath $OutputPath)) {
    throw "PDMPublisher output folder was not found: $OutputPath"
}

Copy-Item -LiteralPath $cssSource -Destination $cssDestination -Force
Write-Host "Custom main.css copied into $OutputPath/public."

$outputFullPath = [IO.Path]::GetFullPath($OutputPath).TrimEnd([IO.Path]::DirectorySeparatorChar)
$utf8WithoutBom = New-Object Text.UTF8Encoding($false)
$tocDirectory = Join-Path $OutputPath "src"
$tocHtmlPath = Join-Path $tocDirectory "toc.html"
$tocJsonPath = Join-Path $tocDirectory "toc.json"

if (-not (Test-Path -LiteralPath $tocHtmlPath) -or -not (Test-Path -LiteralPath $tocJsonPath)) {
    throw "Generated PDMPublisher TOC files were not found in $tocDirectory."
}

# Docfx loads the sidebar from toc.json after reading the docfx:tocrel metadata.
# Use matching content-versioned HTML and JSON filenames so browser/CDN caches
# cannot keep serving an older navigation tree after a documentation deployment.
$tocCacheKey = (Get-FileHash -LiteralPath $tocJsonPath -Algorithm SHA256).Hash.Substring(0, 12).ToLowerInvariant()
$versionedTocBaseName = "toc.$tocCacheKey"
Copy-Item -LiteralPath $tocHtmlPath -Destination (Join-Path $tocDirectory "$versionedTocBaseName.html") -Force
Copy-Item -LiteralPath $tocJsonPath -Destination (Join-Path $tocDirectory "$versionedTocBaseName.json") -Force

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

    if ($Language -eq "fr-CA") {
        $localizedText = [ordered]@{
            "In this article" = "Dans cet article"
            "Filter by title" = "Filtrer par titre"
            "Next" = "Suivant"
            "Previous" = "Précédent"
            "Search" = "Rechercher"
            "Table of Contents" = "Table des matières"
            "Copy" = "Copier"
            "Back to top" = "Retour en haut"
            "Change theme" = "Changer le thème"
            "Edit this page" = "Modifier cette page"
            "Trial requests" = "Demandes de licences"
            "Get a trial" = "Obtenir un essai"
            "For PDMPublisher for SOLIDWORKS PDM Professional (Task version). No commitment or credit card required. Professional email required." = "Pour PDMPublisher pour SOLIDWORKS PDM Professional (version Tâche). Aucun engagement ni carte de crédit requis. Une adresse courriel professionnelle est requise."
            "Request PDM Task trial" = "Demander un essai de la tâche PDM"
            "Request SOLIDWORKS add-in license" = "Demander une licence du complément SOLIDWORKS"
        }
        foreach ($entry in $localizedText.GetEnumerator()) {
            $htmlContent = $htmlContent.Replace($entry.Key, $entry.Value)
        }
    }

    $htmlContent = [regex]::Replace(
        $htmlContent,
        '(<meta\s+name=["'']docfx:tocrel["'']\s+content=["''])([^"'']*?)toc(?:\.[a-f0-9]{12})?\.html(["''])',
        "`$1`$2$versionedTocBaseName.html`$3",
        [Text.RegularExpressions.RegexOptions]::IgnoreCase
    )

    # Root-relative links escape the /help/ deployment folder, so scope them to this site.
    $htmlContent = [regex]::Replace(
        $htmlContent,
        '(\b(?:href|src|action)=["''])/(?!/)',
        '$1/help/',
        [Text.RegularExpressions.RegexOptions]::IgnoreCase
    )

    if ($Language -eq "fr-CA") {
        $htmlContent = [regex]::Replace(
            $htmlContent,
            '(\b(?:href|src)=["''])(?:\.\./)+/?https://',
            '$1https://',
            [Text.RegularExpressions.RegexOptions]::IgnoreCase
        )
        $htmlContent = [regex]::Replace(
            $htmlContent,
            '(\b(?:href|src)=["''])(?:\.\./)*images/',
            '$1https://pdmpublisher.com/help/images/',
            [Text.RegularExpressions.RegexOptions]::IgnoreCase
        )
    }

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

    $robotsContent = if ($relativeUrl -eq "addinwelcome.html") { "noindex, nofollow" } else { "index, follow" }

    $counterpartUrl = if ($Language -eq "fr-CA") {
        if ($relativeUrl -eq "index.html") { "https://pdmpublisher.com/help/" } else { "https://pdmpublisher.com/help/$relativeUrl" }
    }
    else {
        if ($relativeUrl -eq "index.html") { "https://pdmpublisher.com/help/fr-ca/" } else { "https://pdmpublisher.com/help/fr-ca/$relativeUrl" }
    }
    $englishUrl = if ($Language -eq "fr-CA") { $counterpartUrl } else { $canonicalUrl }
    $frenchUrl = if ($Language -eq "fr-CA") { $canonicalUrl } else { $counterpartUrl }

    $tagsToInsert = @"
    <link rel="canonical" href="$canonicalUrl" />
    <link rel="alternate" hreflang="en-CA" href="$englishUrl" />
    <link rel="alternate" hreflang="fr-CA" href="$frenchUrl" />
    <link rel="alternate" hreflang="x-default" href="$englishUrl" />
    <meta name="robots" content="$robotsContent" />
"@

    if ($relativeUrl -eq "addinwelcome.html") {
        $tagsToInsert = @"
    <link rel="canonical" href="$canonicalUrl" />
    <meta name="robots" content="$robotsContent" />
"@
    }

    if ($relativeUrl -eq "index.html" -and $Language -ne "fr-CA") {
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

    $htmlContent = [regex]::Replace($htmlContent, '<html(?:\s+lang=["''][^"'']*["''])?', "<html lang=`"$Language`"", [Text.RegularExpressions.RegexOptions]::IgnoreCase)

    $languageLabel = if ($Language -eq "fr-CA") { "English" } else { "Français (Canada)" }
    if ($relativeUrl -ne "addinwelcome.html") {
        $languageLink = "<a class=`"bbs-language-switcher`" href=`"$counterpartUrl`" hreflang=`"$(if ($Language -eq 'fr-CA') { 'en-CA' } else { 'fr-CA' })`">$languageLabel</a>"
        $htmlContent = $htmlContent -replace '<body([^>]*)>', "<body`$1>$languageLink"
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

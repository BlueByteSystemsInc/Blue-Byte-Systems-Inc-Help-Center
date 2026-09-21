param(
    [string]$OutputPath = "pdmpublisher.com\help",
    [string]$SiteBaseUrl = "https://pdmpublisher.com/help",
    [string]$Language = "en-CA"
)

$siteBaseUrl = $SiteBaseUrl.TrimEnd('/')
$languageSites = [ordered]@{
    "en-CA" = @{
        Label = "English (Canada)"
        SelectorLabel = "Language"
        BaseUrl = "https://pdmpublisher.com/help"
        Text = @{}
    }
    "fr-CA" = @{
        Label = "Français (Canada)"
        SelectorLabel = "Langue"
        BaseUrl = "https://pdmpublisher.com/help/fr-ca"
        Text = [ordered]@{
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
    }
    "de-DE" = @{
        Label = "Deutsch"
        SelectorLabel = "Sprache"
        BaseUrl = "https://pdmpublisher.com/help/de-de"
        Text = [ordered]@{
            "In this article" = "In diesem Artikel"
            "Filter by title" = "Nach Titel filtern"
            "Next" = "Weiter"
            "Previous" = "Zurück"
            "Search" = "Suchen"
            "Table of Contents" = "Inhaltsverzeichnis"
            "Copy" = "Kopieren"
            "Back to top" = "Nach oben"
            "Change theme" = "Design ändern"
            "Edit this page" = "Diese Seite bearbeiten"
            "Trial requests" = "Lizenzanfragen"
            "Get a trial" = "Testversion anfordern"
            "For PDMPublisher for SOLIDWORKS PDM Professional (Task version). No commitment or credit card required. Professional email required." = "Für PDMPublisher für SOLIDWORKS PDM Professional (Task-Version). Keine Verpflichtung oder Kreditkarte erforderlich. Eine geschäftliche E-Mail-Adresse ist erforderlich."
            "Request PDM Task trial" = "PDM-Task-Testversion anfordern"
            "Request SOLIDWORKS add-in license" = "SOLIDWORKS Add-in-Lizenz anfordern"
        }
    }
    "pt-BR" = @{
        Label = "Português (Brasil)"
        SelectorLabel = "Idioma"
        BaseUrl = "https://pdmpublisher.com/help/pt-br"
        Text = [ordered]@{
            "In this article" = "Neste artigo"
            "Filter by title" = "Filtrar por título"
            "Next" = "Próximo"
            "Previous" = "Anterior"
            "Search" = "Pesquisar"
            "Table of Contents" = "Sumário"
            "Copy" = "Copiar"
            "Back to top" = "Voltar ao topo"
            "Change theme" = "Alterar tema"
            "Edit this page" = "Editar esta página"
            "Trial requests" = "Solicitações de licença"
            "Get a trial" = "Obter uma avaliação"
            "For PDMPublisher for SOLIDWORKS PDM Professional (Task version). No commitment or credit card required. Professional email required." = "Para o PDMPublisher para SOLIDWORKS PDM Professional (versão Task). Sem compromisso ou cartão de crédito. É necessário um e-mail profissional."
            "Request PDM Task trial" = "Solicitar avaliação da tarefa PDM"
            "Request SOLIDWORKS add-in license" = "Solicitar licença do suplemento SOLIDWORKS"
        }
    }
}

if (-not $languageSites.Contains($Language)) {
    throw "Unsupported PDMPublisher documentation language: $Language"
}

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

    if ($Language -ne "en-CA") {
        $localizedText = $languageSites[$Language].Text
        foreach ($entry in $localizedText.GetEnumerator()) {
            $escapedSource = [regex]::Escape($entry.Key)
            $standaloneTextPattern = "(?<![\p{L}\p{N}_])$escapedSource(?![\p{L}\p{N}_])"
            $replacementText = $entry.Value
            $htmlContent = [regex]::Replace(
                $htmlContent,
                $standaloneTextPattern,
                { param($match) $replacementText }
            )
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

    if ($Language -ne "en-CA") {
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

    $pageUrls = [ordered]@{}
    foreach ($languageCode in $languageSites.Keys) {
        $languageBaseUrl = $languageSites[$languageCode].BaseUrl
        $pageUrls[$languageCode] = if ($relativeUrl -eq "index.html") { "$languageBaseUrl/" } else { "$languageBaseUrl/$relativeUrl" }
    }
    $alternateTags = foreach ($languageCode in $languageSites.Keys) {
        "    <link rel=`"alternate`" hreflang=`"$languageCode`" href=`"$($pageUrls[$languageCode])`" />"
    }

    $tagsToInsert = @"
    <link rel="canonical" href="$canonicalUrl" />
$($alternateTags -join "`r`n")
    <link rel="alternate" hreflang="x-default" href="$($pageUrls['en-CA'])" />
    <meta name="robots" content="$robotsContent" />
"@

    if ($relativeUrl -eq "index.html" -and $Language -eq "en-CA") {
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

    if ($relativeUrl -ne "addinwelcome.html") {
        $languageOptions = foreach ($languageCode in $languageSites.Keys) {
            $selected = if ($languageCode -eq $Language) { " selected" } else { "" }
            "<option value=`"$($pageUrls[$languageCode])`" lang=`"$languageCode`"$selected>$($languageSites[$languageCode].Label)</option>"
        }
        $selectorLabel = $languageSites[$Language].SelectorLabel
        $languageSelector = "<label class=`"bbs-language-switcher`"><span class=`"visually-hidden`">$selectorLabel</span><select aria-label=`"$selectorLabel`" onchange=`"window.location.href=this.value`">$($languageOptions -join '')</select></label>"
        if ($htmlContent -match '<form class="search"') {
            $htmlContent = $htmlContent -replace '<form class="search"', "$languageSelector<form class=`"search`""
        }
        else {
            $htmlContent = $htmlContent -replace '<body([^>]*)>', "<body`$1>$languageSelector"
        }
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

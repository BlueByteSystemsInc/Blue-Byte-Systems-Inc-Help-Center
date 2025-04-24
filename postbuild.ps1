# Path to your HTML file
$filePath = "docs\index.html"

# SEO tags tailored specifically for docs.bluebyte.biz
$tagsToInsert = @"
    <link rel="canonical" href="https://docs.bluebyte.biz/" />
    <meta name="description" content="Official documentation for Blue Byte Systems Inc. products, including PDMPublisher and PDM2Excel." />
    <meta name="keywords" content="Blue Byte Systems, PDMPublisher, PDM2Excel, SOLIDWORKS PDM, PDM automation, SOLIDWORKS documentation, export BOM, PDF automation, merge PDFs, custom tools for SOLIDWORKS, SOLIDWORKS PDF export, batch export, PDM Excel integration, BOM export to Excel, CAD document automation, SOLIDWORKS custom macros, SOLIDWORKS add-ins, CAD file management, PDF tools, custom tools alternative, Blue Byte Systems documentation, SOLIDWORKS PDM solutions" />
    <meta name="author" content="Blue Byte Systems Inc." />
    <!-- Open Graph Tags -->
    <meta property="og:title" content="Blue Byte Systems Documentation - PDMPublisher & PDM2Excel" />
    <meta property="og:description" content="Comprehensive guides, tutorials, and documentation for PDMPublisher and PDM2Excel by Blue Byte Systems Inc." />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://docs.bluebyte.biz/" />
    <meta property="og:image" content="https://docs.bluebyte.biz/images/logo.png" />

    <!-- Twitter Cards -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Blue Byte Systems Docs – PDMPublisher & PDM2Excel" />
    <meta name="twitter:description" content="Official documentation and usage guides for Blue Byte Systems Inc. products PDMPublisher and PDM2Excel." />
    <meta name="twitter:image" content="https://docs.bluebyte.biz/images/logo.png" />

    <!-- Robots Tag -->
    <meta name="robots" content="index, follow" />

    <!-- Structured Data -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "TechArticle",
      "headline": "Blue Byte Systems Documentation",
      "description": "Detailed documentation for PDMPublisher and PDM2Excel software from Blue Byte Systems Inc.",
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
    exit
}

# Insert tags before </head>
if ($htmlContent -match "</head>") {
    $updatedContent = $htmlContent -replace "</head>", "$tagsToInsert`r`n</head>"
    Set-Content -Path $filePath -Value $updatedContent -Encoding UTF8
    Write-Host "SEO tags successfully inserted into index.html."
}
else {
    Write-Host "Error: Couldn't find </head> tag in index.html."
}

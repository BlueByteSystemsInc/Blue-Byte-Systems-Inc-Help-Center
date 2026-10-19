param(
    [string]$SourceDirectory = "P:\BLUE BYTE SYSTEMS INC\PDMPublisher\Public\2026",
    [string]$StableFileName = "PDMPublisher.cex",
    [string]$PublicBaseUrl = "https://docs.bluebyte.biz/downloads",
    [string]$Remote = "origin",
    [string]$Branch = "main",
    [switch]$NoPush
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$workspaceRoot = [IO.Path]::GetFullPath($PSScriptRoot).TrimEnd([IO.Path]::DirectorySeparatorChar)
$sourceRoot = [IO.Path]::GetFullPath($SourceDirectory).TrimEnd([IO.Path]::DirectorySeparatorChar)
$sourceDestination = Join-Path $workspaceRoot "downloads\$StableFileName"
$siteDestination = Join-Path $workspaceRoot "docs\downloads\$StableFileName"
$sourceMetadata = Join-Path $workspaceRoot "downloads\PDMPublisher.latest.json"
$siteMetadata = Join-Path $workspaceRoot "docs\downloads\PDMPublisher.latest.json"
$publicUrl = $PublicBaseUrl.TrimEnd('/') + "/" + $StableFileName

function Invoke-Git {
    param([Parameter(ValueFromRemainingArguments = $true)][string[]]$Arguments)
    $output = & git -C $workspaceRoot @Arguments 2>&1
    if ($LASTEXITCODE -ne 0) {
        throw "git $($Arguments -join ' ') failed:`n$($output -join [Environment]::NewLine)"
    }
    return @($output)
}

if (-not (Test-Path -LiteralPath $sourceRoot -PathType Container)) {
    throw "The PDMPublisher release folder was not found: $sourceRoot"
}

if (-not (Test-Path -LiteralPath (Join-Path $workspaceRoot ".git") -PathType Container)) {
    throw "This script must be run from the documentation repository."
}

$status = @(Invoke-Git status --porcelain)
if ($status.Count -gt 0) {
    throw "The documentation worktree is not clean. Commit or stash existing changes before publishing a CEX file.`n$($status -join [Environment]::NewLine)"
}

$candidates = foreach ($file in Get-ChildItem -LiteralPath $sourceRoot -File -Filter "PDMPublisherV*.cex") {
    if ($file.BaseName -match '^PDMPublisherV(?<Version>\d{8})$') {
        [pscustomobject]@{
            File = $file
            Version = [Int64]$Matches.Version
            VersionText = $Matches.Version
        }
    }
}

$latest = $candidates |
    Sort-Object -Property @{ Expression = "Version"; Descending = $true },
        @{ Expression = { $_.File.LastWriteTimeUtc }; Descending = $true } |
    Select-Object -First 1

if (-not $latest) {
    throw "No release matching PDMPublisherV########.cex was found in $sourceRoot"
}

foreach ($directory in @((Split-Path $sourceDestination), (Split-Path $siteDestination))) {
    if (-not (Test-Path -LiteralPath $directory -PathType Container)) {
        New-Item -ItemType Directory -Path $directory | Out-Null
    }
}

Copy-Item -LiteralPath $latest.File.FullName -Destination $sourceDestination -Force
Copy-Item -LiteralPath $latest.File.FullName -Destination $siteDestination -Force

$hash = (Get-FileHash -LiteralPath $sourceDestination -Algorithm SHA256).Hash.ToLowerInvariant()
$metadata = [ordered]@{
    product = "PDMPublisher"
    version = $latest.VersionText
    sourceFile = $latest.File.Name
    fileName = $StableFileName
    sizeBytes = $latest.File.Length
    sha256 = $hash
    publishedUtc = [DateTime]::UtcNow.ToString("o")
    url = $publicUrl
}
$metadataJson = $metadata | ConvertTo-Json
[IO.File]::WriteAllText($sourceMetadata, $metadataJson + [Environment]::NewLine, [Text.UTF8Encoding]::new($false))
[IO.File]::WriteAllText($siteMetadata, $metadataJson + [Environment]::NewLine, [Text.UTF8Encoding]::new($false))

$trackedPaths = @(
    "downloads/$StableFileName",
    "downloads/PDMPublisher.latest.json",
    "docs/downloads/$StableFileName",
    "docs/downloads/PDMPublisher.latest.json"
)
Invoke-Git add -- @trackedPaths | Out-Null

$staged = @(Invoke-Git diff --cached --name-only -- @trackedPaths)
if ($staged.Count -eq 0) {
    Write-Host "PDMPublisher $($latest.VersionText) is already published."
    Write-Host "Static URL: $publicUrl"
    return
}

Invoke-Git commit -m "Publish PDMPublisher CEX $($latest.VersionText)" -- @trackedPaths | Write-Host

if (-not $NoPush) {
    Invoke-Git push $Remote "HEAD:$Branch" | Write-Host
}

Write-Host "Published source: $($latest.File.FullName)"
Write-Host "Version: $($latest.VersionText)"
Write-Host "SHA-256: $hash"
Write-Host "Static URL: $publicUrl"
if ($NoPush) {
    Write-Host "The commit was created locally. Push was skipped because -NoPush was specified."
}

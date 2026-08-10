param(
    [switch]$Deploy
)

$ErrorActionPreference = "Stop"

$workspaceRoot = [IO.Path]::GetFullPath($PSScriptRoot).TrimEnd([IO.Path]::DirectorySeparatorChar)
$outputRoot = [IO.Path]::GetFullPath((Join-Path $workspaceRoot "pdmpublisher.com"))
$expectedPrefix = $workspaceRoot + [IO.Path]::DirectorySeparatorChar

if (-not $outputRoot.StartsWith($expectedPrefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Refusing to clean an output path outside the workspace: $outputRoot"
}

if (Test-Path -LiteralPath $outputRoot) {
    Remove-Item -LiteralPath $outputRoot -Recurse -Force
}

Push-Location $workspaceRoot
try {
    & ".\bin\docfx.exe" ".\docfx.pdmpublisher.json"
    if ($LASTEXITCODE -ne 0) {
        exit $LASTEXITCODE
    }

    & ".\postbuild-pdmpublisher.ps1"
    if ($LASTEXITCODE -ne 0) {
        exit $LASTEXITCODE
    }
}
finally {
    Pop-Location
}

if ($Deploy) {
    & (Join-Path $workspaceRoot "deploy-pdmpublisher.ps1") -SkipBuild
    if ($LASTEXITCODE -ne 0) {
        exit $LASTEXITCODE
    }
}

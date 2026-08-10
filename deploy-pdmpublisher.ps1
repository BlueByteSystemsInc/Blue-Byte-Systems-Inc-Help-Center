param(
    [string]$CredentialPath = (Join-Path $env:USERPROFILE "OneDrive - Blue Byte Systems, Inc\PDMPublisher\PDMPublisherSFTP.txt"),
    [string]$HostName = "126821.us6.ssh.myftpupload.com",
    [int]$Port = 22,
    [string]$RemotePath = "/html/help",
    [string]$SshHostKeyFingerprint = "ssh-ed25519 255 oxYa4nr7BL5hXCIG5j/OOk54R6yNokpACBoa3tn+Kp4",
    [switch]$SkipBuild,
    [switch]$Preview,
    [switch]$KeepRemoteFiles
)

$ErrorActionPreference = "Stop"

$workspaceRoot = [IO.Path]::GetFullPath($PSScriptRoot).TrimEnd([IO.Path]::DirectorySeparatorChar)
$localPath = [IO.Path]::GetFullPath((Join-Path $workspaceRoot "pdmpublisher.com\help"))
$expectedLocalPrefix = $workspaceRoot + [IO.Path]::DirectorySeparatorChar
$normalizedRemotePath = "/" + $RemotePath.Trim("/")

if (-not $localPath.StartsWith($expectedLocalPrefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Refusing to deploy a local path outside the workspace: $localPath"
}

if ($normalizedRemotePath -ne "/html/help") {
    throw "Refusing to deploy outside the expected remote folder /html/help: $normalizedRemotePath"
}

if (-not (Test-Path -LiteralPath $CredentialPath -PathType Leaf)) {
    throw "SFTP credential file was not found: $CredentialPath"
}

function Get-ValueAfterLabel {
    param(
        [string[]]$Lines,
        [string]$Label
    )

    for ($index = 0; $index -lt $Lines.Count - 1; $index++) {
        if ($Lines[$index].Trim() -eq $Label) {
            return $Lines[$index + 1].Trim()
        }
    }

    throw "The SFTP credential file is missing the '$Label' label or its value."
}

$credentialLines = @(Get-Content -LiteralPath $CredentialPath)
$username = Get-ValueAfterLabel -Lines $credentialLines -Label "Username"
$password = Get-ValueAfterLabel -Lines $credentialLines -Label "Password"

if ([string]::IsNullOrWhiteSpace($username) -or [string]::IsNullOrWhiteSpace($password)) {
    throw "The SFTP credential file contains an empty username or password."
}

if (-not $SkipBuild) {
    & (Join-Path $workspaceRoot "build-pdmpublisher.ps1")
    if ($LASTEXITCODE -ne 0) {
        throw "The PDMPublisher documentation build failed. Deployment was not started."
    }
}

if (-not (Test-Path -LiteralPath (Join-Path $localPath "index.html") -PathType Leaf)) {
    throw "The local deployment folder does not contain index.html: $localPath"
}

if (-not (Test-Path -LiteralPath (Join-Path $localPath "sitemap.xml") -PathType Leaf)) {
    throw "The local deployment folder does not contain sitemap.xml: $localPath"
}

$winScpCandidates = @(
    (Join-Path $env:LOCALAPPDATA "Programs\WinSCP\WinSCPnet.dll"),
    "C:\Program Files\WinSCP\WinSCPnet.dll",
    "C:\Program Files (x86)\WinSCP\WinSCPnet.dll"
)
$winScpAssembly = $winScpCandidates | Where-Object { Test-Path -LiteralPath $_ -PathType Leaf } | Select-Object -First 1

if (-not $winScpAssembly) {
    throw "WinSCP is required for deployment. Install it with: winget install --id WinSCP.WinSCP --exact"
}

Add-Type -Path $winScpAssembly

$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$sessionOptions = New-Object WinSCP.SessionOptions -Property @{
    Protocol = [WinSCP.Protocol]::Sftp
    HostName = $HostName
    PortNumber = $Port
    UserName = $username
    SecurePassword = $securePassword
    SshHostKeyFingerprint = $SshHostKeyFingerprint
    Timeout = (New-TimeSpan -Minutes 2)
}

$session = New-Object WinSCP.Session
try {
    Write-Host "Connecting to the verified PDMPublisher SFTP host..."
    $session.Open($sessionOptions)

    if (-not $session.FileExists("/html")) {
        throw "The expected remote /html folder was not found. No files were changed."
    }

    $remoteExists = $session.FileExists($normalizedRemotePath)
    if ($Preview) {
        $remoteFileCount = 0
        $remoteEntryNames = @()
        if ($remoteExists) {
            $remoteEntries = @(
                $session.ListDirectory($normalizedRemotePath).Files |
                    Where-Object { $_.Name -notin ".", ".." }
            )
            $remoteFileCount = $remoteEntries.Count
            $remoteEntryNames = @($remoteEntries | Select-Object -ExpandProperty Name | Sort-Object)
        }

        Write-Host "SFTP connection verified."
        Write-Host "Local source: $localPath"
        Write-Host "Remote target: $normalizedRemotePath"
        Write-Host "Remote target exists: $remoteExists"
        Write-Host "Remote top-level entries: $remoteFileCount"
        if ($remoteEntryNames.Count -gt 0) {
            Write-Host "Remote entry names: $($remoteEntryNames -join ', ')"
        }
        return
    }

    if (-not $remoteExists) {
        Write-Host "Creating remote folder $normalizedRemotePath..."
        $session.CreateDirectory($normalizedRemotePath)
    }

    $removeObsoleteFiles = -not $KeepRemoteFiles
    Write-Host "Synchronizing the generated help site to $normalizedRemotePath..."
    $result = $session.SynchronizeDirectories(
        [WinSCP.SynchronizationMode]::Remote,
        $localPath,
        $normalizedRemotePath,
        $removeObsoleteFiles,
        $true,
        [WinSCP.SynchronizationCriteria]::Time
    )
    $result.Check()

    if (-not $session.FileExists("$normalizedRemotePath/index.html")) {
        throw "The upload completed without a remote index.html file."
    }

    if (-not $session.FileExists("$normalizedRemotePath/sitemap.xml")) {
        throw "The upload completed without a remote sitemap.xml file."
    }

    Write-Host "Deployment completed successfully."
    Write-Host "Uploaded or updated files: $(@($result.Uploads).Count)"
    Write-Host "Removed obsolete files: $(@($result.Removals).Count)"
    Write-Host "Public URL: https://pdmpublisher.com/help/"
}
finally {
    $session.Dispose()
    $password = $null
    $securePassword = $null
}

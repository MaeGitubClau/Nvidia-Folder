param(
    [string]$WowRetailPath = ""
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($WowRetailPath)) {
    $WowRetailPath = Read-Host "Enter your WoW _retail_ folder path"
}

$WowRetailPath = $WowRetailPath.Trim('"')
$wtfPath = Join-Path $WowRetailPath "WTF"
$accountPath = Join-Path $wtfPath "Account"

if (!(Test-Path $accountPath)) {
    throw "Could not find WTF\\Account under: $WowRetailPath"
}

$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$backupRoot = Join-Path $WowRetailPath "BindPadBackup-$timestamp"
New-Item -ItemType Directory -Force -Path $backupRoot | Out-Null

$savedVariables = Get-ChildItem -Path $accountPath -Recurse -Filter "BindPad.lua" -File -ErrorAction SilentlyContinue
$bindingCaches = Get-ChildItem -Path $accountPath -Recurse -Filter "bindings-cache.wtf" -File -ErrorAction SilentlyContinue

foreach ($file in @($savedVariables + $bindingCaches)) {
    $relative = $file.FullName.Substring($accountPath.Length).TrimStart("\\")
    $destination = Join-Path $backupRoot $relative
    $destinationDir = Split-Path $destination -Parent
    New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
    Copy-Item -Path $file.FullName -Destination $destination -Force
}

Write-Host ""
Write-Host "Backup complete:"
Write-Host $backupRoot
Write-Host ""
Write-Host "Files copied:"
Write-Host "BindPad.lua:" $savedVariables.Count
Write-Host "bindings-cache.wtf:" $bindingCaches.Count

param(
    [string]$WowRetailPath = "",
    [string]$GglConfigPath = ""
)

$ErrorActionPreference = "Stop"

function Write-Step {
    param([string]$Message)
    Write-Host ""
    Write-Host "== $Message ==" -ForegroundColor Cyan
}

function Test-WowRetailPath {
    param([string]$Path)
    if ([string]::IsNullOrWhiteSpace($Path)) {
        return $false
    }
    return (Test-Path (Join-Path $Path "WTF\Account")) -and (Test-Path (Join-Path $Path "Interface"))
}

function Pick-WowRetailPath {
    param([string]$InitialPath)

    if (Test-WowRetailPath $InitialPath) {
        return (Resolve-Path $InitialPath).Path
    }

    $candidates = @(
        "C:\Program Files (x86)\World of Warcraft\_retail_",
        "C:\Program Files\World of Warcraft\_retail_",
        "D:\World of Warcraft\_retail_",
        "E:\World of Warcraft\_retail_",
        "F:\World of Warcraft\_retail_"
    )

    foreach ($candidate in $candidates) {
        if (Test-WowRetailPath $candidate) {
            return $candidate
        }
    }

    while ($true) {
        $entered = Read-Host "Paste your WoW _retail_ folder path"
        $entered = $entered.Trim('"')
        if (Test-WowRetailPath $entered) {
            return (Resolve-Path $entered).Path
        }
        Write-Host "That does not look like a WoW _retail_ folder. It must contain WTF\Account and Interface." -ForegroundColor Yellow
    }
}

function Pick-GglConfigPath {
    param([string]$InitialPath)

    if (-not [string]::IsNullOrWhiteSpace($InitialPath) -and (Test-Path $InitialPath) -and (Split-Path $InitialPath -Leaf) -ieq "Config.ini") {
        return (Resolve-Path $InitialPath).Path
    }

    while ($true) {
        $entered = Read-Host "Paste your real GGL Config.ini path"
        $entered = $entered.Trim('"')
        if ((Test-Path $entered) -and (Split-Path $entered -Leaf) -ieq "Config.ini") {
            return (Resolve-Path $entered).Path
        }
        Write-Host "That must be the real file named Config.ini." -ForegroundColor Yellow
    }
}

function Copy-CleanFolder {
    param(
        [string]$Source,
        [string]$Destination,
        [string]$BackupSuffix
    )

    if (Test-Path $Destination) {
        $backupDestination = "$Destination.backup-$BackupSuffix"
        Move-Item $Destination $backupDestination -Force
        Write-Host "Existing addon folder backup:"
        Write-Host $backupDestination -ForegroundColor Green
    }
    Copy-Item $Source $Destination -Recurse -Force
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$addonSource = Join-Path $repoRoot "BindPadBulkImporter"
$cleanerSource = Join-Path $repoRoot "ModifierBindCleaner"
$configSource = Join-Path $repoRoot "generated\Config.remade.ini"

if (-not (Test-Path $addonSource)) {
    throw "Missing BindPadBulkImporter folder. Run this from the extracted Nvidia-Folder package."
}

if (-not (Test-Path $cleanerSource)) {
    throw "Missing ModifierBindCleaner folder. Run this from the extracted Nvidia-Folder package."
}

if (-not (Test-Path $configSource)) {
    throw "Missing generated\Config.remade.ini. Run this from the extracted Nvidia-Folder package."
}

Write-Host "Nvidia Folder Installer" -ForegroundColor Green
Write-Host "This backs up first, installs the safe BindPad importer addon, and replaces GGL Config.ini."
Write-Host "Close WoW and GGL before continuing." -ForegroundColor Yellow
Read-Host "Press Enter when WoW and GGL are closed"

$wowPath = Pick-WowRetailPath $WowRetailPath
$gglConfig = Pick-GglConfigPath $GglConfigPath
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"

Write-Step "Backing up WoW account folder"
$accountPath = Join-Path $wowPath "WTF\Account"
$desktop = [Environment]::GetFolderPath("Desktop")
$wowBackup = Join-Path $desktop "WoW Account Backup Before Nvidia Folder $timestamp"
Copy-Item $accountPath $wowBackup -Recurse -Force
Write-Host "WoW backup created:"
Write-Host $wowBackup -ForegroundColor Green

Write-Step "Installing safe BindPad importer addon"
$addonsPath = Join-Path $wowPath "Interface\AddOns"
if (-not (Test-Path $addonsPath)) {
    New-Item -ItemType Directory -Path $addonsPath -Force | Out-Null
}
$addonDestination = Join-Path $addonsPath "BindPadBulkImporter"
Copy-CleanFolder $addonSource $addonDestination $timestamp
Write-Host "Addon installed:"
Write-Host $addonDestination -ForegroundColor Green

$cleanerDestination = Join-Path $addonsPath "ModifierBindCleaner"
Copy-CleanFolder $cleanerSource $cleanerDestination $timestamp
Write-Host "Cleaner addon installed:"
Write-Host $cleanerDestination -ForegroundColor Green

Write-Step "Backing up and replacing GGL config"
$gglBackup = "$gglConfig.backup-$timestamp"
Copy-Item $gglConfig $gglBackup -Force
Copy-Item $configSource $gglConfig -Force
Write-Host "Original GGL config backup:"
Write-Host $gglBackup -ForegroundColor Green
Write-Host "New GGL config installed:"
Write-Host $gglConfig -ForegroundColor Green

Write-Step "Done"
Write-Host "Next steps:"
Write-Host "1. Start WoW."
Write-Host "2. Enable BindPad and BindPad Bulk Importer at the AddOns screen."
Write-Host "3. Enable Modifier Bind Cleaner if you want /unbindmods."
Write-Host "4. Log into your Warrior."
Write-Host "5. Type /bpimport."
Write-Host "6. Click Import BindPad or Force Import."
Write-Host "7. Type /reload."
Write-Host ""
Write-Host "The new importer skips existing WoW keybinds instead of overwriting them." -ForegroundColor Green

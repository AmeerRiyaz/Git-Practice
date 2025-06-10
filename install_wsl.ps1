# Run this script as Administrator
# Save as install_wsl.ps1 and right-click > Run with PowerShell

Write-Output "Enabling required Windows features for WSL..."
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Write-Output "Downloading and installing the WSL 2 kernel update..."
Invoke-WebRequest -Uri "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" -OutFile "$env:TEMP\wsl_update_x64.msi"
Start-Process msiexec.exe -Wait -ArgumentList "/i $env:TEMP\wsl_update_x64.msi /quiet /norestart"

Write-Output "Setting WSL 2 as the default version..."
wsl --set-default-version 2

Write-Output "Installing Ubuntu..."
wsl --install -d Ubuntu

Write-Output "Waiting for WSL to finalize installation..."
Start-Sleep -Seconds 30

Write-Output "Setting Ubuntu as the default WSL distribution..."
wsl --set-default Ubuntu

Write-Output "`n✅ WSL with Ubuntu installed and set as default!


#Set-ExecutionPolicy Bypass -Scope Process -Force
#.\install_wsl.ps1
